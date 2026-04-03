. "$PSScriptRoot\town_template.ps1"

$jsonPath = Join-Path $PSScriptRoot "town_data.json"
$allTowns = Get-Content $jsonPath -Raw | ConvertFrom-Json

foreach ($t in $allTowns) {
    # Convert PSCustomObject to hashtable recursively
    function ConvertTo-Hashtable($obj) {
        if ($obj -is [System.Management.Automation.PSCustomObject]) {
            $ht = @{}
            foreach ($prop in $obj.PSObject.Properties) {
                $ht[$prop.Name] = ConvertTo-Hashtable $prop.Value
            }
            return $ht
        }
        elseif ($obj -is [System.Object[]]) {
            return @($obj | ForEach-Object { ConvertTo-Hashtable $_ })
        }
        else { return $obj }
    }
    $data = ConvertTo-Hashtable $t
    $html = Generate-TownPage -D $data
    $fileName = "StampedConcrete$($data.FileKey).html"
    [System.IO.File]::WriteAllText((Join-Path $PSScriptRoot $fileName), $html)
    Write-Host "Created: $fileName"
}
Write-Host "`nAll hyper-local town pages generated!"
