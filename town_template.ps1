function Generate-TownPage {
    param([hashtable]$D)
    
    # Build neighborhoods HTML
    $nhoodHtml = ""
    foreach ($n in $D.Neighborhoods) {
        $nhoodHtml += "                <span class=`"neighborhood-tag`"><i class=`"fas fa-map-marker-alt`" style=`"color: var(--primary); margin-right: 0.35rem;`"></i> $n</span>`n"
    }

    # Build nearby town links (footer)
    $nearbyLinksHtml = ""
    foreach ($nt in $D.NearbyTowns) {
        $nearbyLinksHtml += "                    <li><a href=`"StampedConcrete$($nt.F).html`">$($nt.N), NH</a></li>`n"
    }

    # Build nearby inline links
    $nearbyInline = ""
    for ($i=0; $i -lt $D.NearbyTowns.Count -and $i -lt 4; $i++) {
        $nt = $D.NearbyTowns[$i]
        if ($i -gt 0) { $nearbyInline += ", " }
        $nearbyInline += "<a href=`"StampedConcrete$($nt.F).html`" style=`"color: var(--primary);`">$($nt.N)</a>"
    }

    # Build projects HTML
    $projHtml = ""
    $delays = @("", " style=`"transition-delay: 0.1s;`"", " style=`"transition-delay: 0.2s;`"")
    $imgs = @("images/hero_concrete_patio.png", "images/stamped_walkway.png", "images/concrete_pool_deck.png")
    for ($i=0; $i -lt 3; $i++) {
        $p = $D.Projects[$i]
        $projHtml += @"
                <div class="project-card animate-on-scroll"$($delays[$i])>
                    <img src="$($imgs[$i])" alt="$($p.Pattern) stamped concrete $($p.Area) $($D.Name) NH">
                    <div class="project-card-content">
                        <span class="local-badge" style="margin-bottom: 0.5rem;">$($p.Area)</span>
                        <h4>$($p.Title)</h4>
                        <p>$($p.Desc)</p>
                    </div>
                </div>
"@
    }

    # Build testimonials HTML
    $testHtml = ""
    for ($i=0; $i -lt 3; $i++) {
        $t = $D.Testimonials[$i]
        $d2 = if($i -gt 0) { " style=`"transition-delay: $($i * 0.1)s;`"" } else { "" }
        $testHtml += @"
                <div class="testimonial-card animate-on-scroll"$d2>
                    <div class="testimonial-stars">
                        <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                    </div>
                    <p class="testimonial-text">"$($t.Text)"</p>
                    <p class="testimonial-author">$($t.Author)</p>
                    <p class="testimonial-location"><i class="fas fa-map-marker-alt" style="margin-right: 0.25rem;"></i> $($t.Street), $($D.Name), NH</p>
                </div>
"@
    }

    # Build FAQs HTML
    $faqHtml = ""
    foreach ($f in $D.FAQs) {
        $faqHtml += @"
                <div class="faq-item animate-on-scroll">
                    <h4><i class="fas fa-question-circle"></i> $($f.Q)</h4>
                    <p>$($f.A)</p>
                </div>
"@
    }

    # Build community items HTML
    $commHtml = ""
    foreach ($c in $D.Community) {
        $commHtml += @"
                        <li style="display: flex; align-items: flex-start; gap: 0.75rem;">
                            <i class="fas fa-check-circle text-primary" style="margin-top: 0.2rem; flex-shrink: 0;"></i>
                            <span style="color: var(--concrete);">$c</span>
                        </li>
"@
    }

    # Build directions steps HTML
    $dirHtml = ""
    foreach ($step in $D.Directions.Steps) {
        $dirHtml += "                            <li>$step</li>`n"
    }

    # Build landmarks HTML
    $lmHtml = ""
    foreach ($lm in $D.Landmarks) {
        $lmHtml += @"
                        <li style="display: flex; align-items: flex-start; gap: 0.75rem;">
                            <i class="fas fa-$($lm.Icon)" style="color: var(--primary); margin-top: 0.2rem; flex-shrink: 0;"></i>
                            <span style="color: var(--concrete);"><strong>$($lm.Name)</strong> $([char]0x2014) $($lm.Desc)</span>
                        </li>
"@
    }

    # Map embed URL
    $townEnc = [uri]::EscapeDataString("$($D.Name), NH")
    $destEnc = [uri]::EscapeDataString("Northeast Decorative Concrete LLC, 8 Chenell Dr, Concord, NH 03301")
    $mapsUrl = "https://www.google.com/maps/dir/$townEnc/$destEnc"
    $embedUrl = "https://www.google.com/maps?q=$townEnc+to+8+Chenell+Dr+Concord+NH&output=embed"

    # Services descriptions
    $svc1 = $D.SvcPatios
    $svc2 = $D.SvcWalkways  
    $svc3 = $D.SvcPools

    $html = @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stamped Concrete $($D.Name) NH | $($D.TitleSuffix)</title>
    <meta name="description" content="$($D.Name)'s trusted stamped concrete contractor since 1985. $($D.MetaDesc)">
    <link rel="icon" type="image/svg+xml" href="/favicon.svg">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Outfit:wght@400;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="styles.css">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "LocalBusiness",
        "name": "Northeast Decorative Concrete, LLC",
        "description": "Premium stamped concrete contractor serving $($D.Name), NH",
        "url": "http://www.stampedconcretewalkway.com/StampedConcrete$($D.FileKey).html",
        "telephone": "1-888-756-5377",
        "email": "info@northeastdecorativeconcrete.com",
        "address": {"@type": "PostalAddress", "streetAddress": "8 Chenell Dr", "addressLocality": "Concord", "addressRegion": "NH", "postalCode": "03301"},
        "areaServed": {"@type": "City", "name": "$($D.Name)", "containedInPlace": {"@type": "State", "name": "New Hampshire"}},
        "serviceType": ["Stamped Concrete Patios","Stamped Concrete Walkways","Stamped Concrete Pool Decks","Concrete Resealing"]
    }
    </script>
    <style>
        .local-badge{display:inline-flex;align-items:center;gap:.4rem;background:linear-gradient(135deg,#fef3c7,#fde68a);color:#92400e;padding:.35rem .85rem;border-radius:999px;font-size:.8rem;font-weight:600;text-transform:uppercase;letter-spacing:.05em}
        .project-card{background:#fff;border-radius:var(--border-radius);overflow:hidden;box-shadow:var(--box-shadow);transition:transform .3s ease,box-shadow .3s ease}
        .project-card:hover{transform:translateY(-5px);box-shadow:0 12px 30px rgba(0,0,0,.15)}
        .project-card img{width:100%;height:220px;object-fit:cover}
        .project-card-content{padding:1.5rem}
        .project-card-content h4{margin-bottom:.5rem;font-size:1.1rem}
        .project-card-content p{color:var(--concrete);font-size:.9rem;line-height:1.6}
        .testimonial-card{background:#fff;padding:2rem;border-radius:var(--border-radius);box-shadow:var(--box-shadow);position:relative}
        .testimonial-card::before{content:'\201C';position:absolute;top:.5rem;left:1rem;font-size:4rem;color:var(--primary);opacity:.2;font-family:Georgia,serif;line-height:1}
        .testimonial-stars{color:#f59e0b;margin-bottom:.75rem;font-size:1rem}
        .testimonial-text{color:var(--concrete);font-style:italic;margin-bottom:1rem;line-height:1.7;font-size:.95rem}
        .testimonial-author{font-weight:600;color:var(--secondary)}
        .testimonial-location{font-size:.85rem;color:var(--concrete)}
        .faq-item{background:#fff;border-radius:var(--border-radius);box-shadow:var(--box-shadow);padding:1.75rem;margin-bottom:1rem}
        .faq-item h4{color:var(--secondary);margin-bottom:.75rem;font-size:1.05rem;display:flex;align-items:flex-start;gap:.5rem}
        .faq-item h4 i{color:var(--primary);margin-top:.2rem;flex-shrink:0}
        .faq-item p{color:var(--concrete);line-height:1.7;font-size:.95rem;padding-left:1.5rem}
        .neighborhood-tag{display:inline-block;background:#f5f5f4;padding:.5rem 1rem;border-radius:var(--border-radius);font-size:.9rem;color:var(--secondary);border:1px solid #e7e5e4;transition:var(--transition)}
        .neighborhood-tag:hover{background:var(--primary);color:#fff;border-color:var(--primary)}
        .stat-box{text-align:center;padding:2rem}
        .stat-box .stat-number{font-family:var(--font-heading);font-size:2.75rem;font-weight:800;color:var(--primary);line-height:1}
        .stat-box .stat-label{font-size:.9rem;color:var(--concrete);margin-top:.5rem}
        .promo-banner{background:linear-gradient(135deg,#292524,#44403c);border:2px solid var(--primary);border-radius:var(--border-radius);padding:2.5rem;text-align:center;position:relative;overflow:hidden}
        .promo-banner::before{content:'';position:absolute;top:-50%;left:-50%;width:200%;height:200%;background:radial-gradient(circle,rgba(217,119,6,.08) 0%,transparent 70%)}
        .promo-banner h3{color:var(--primary);font-size:1.5rem;margin-bottom:.75rem;position:relative}
        .promo-banner p{color:#d6d3d1;margin-bottom:1.5rem;position:relative}
        .directions-box{background:#fff;padding:2rem;border-radius:var(--border-radius);box-shadow:var(--box-shadow);border-left:4px solid var(--primary)}
        .directions-box ol{padding-left:1.5rem;color:var(--concrete);line-height:2}
    </style>
</head>
<body>
    <header class="header">
        <div class="nav-container">
            <a href="index.html" class="logo">Northeast Decorative <span>Concrete, LLC</span></a>
            <button class="mobile-menu-btn" aria-label="Toggle menu"><i class="fas fa-bars"></i></button>
            <nav class="nav-links">
                <a href="index.html" class="nav-link">Home</a>
                <a href="about.html" class="nav-link">About Us</a>
                <div class="dropdown">
                    <a href="services.html" class="nav-link">Services</a>
                    <button class="dropdown-toggle-btn" aria-label="Toggle services menu"><i class="fas fa-chevron-down"></i></button>
                    <div class="dropdown-menu">
                        <a href="stampedconcretepatios.html" class="dropdown-item">Stamped Concrete Patios</a>
                        <a href="resealingstampedconcrete.html" class="dropdown-item">Resealing Stamped Concrete</a>
                        <a href="stampedconcretepooldecks.html" class="dropdown-item">Stamped Concrete Pool Decks</a>
                    </div>
                </div>
                <div class="dropdown">
                    <a href="areas-we-service.html" class="nav-link active">Areas We Service</a>
                    <button class="dropdown-toggle-btn" aria-label="Toggle areas menu"><i class="fas fa-chevron-down"></i></button>
                    <div class="dropdown-menu">
                        <a href="StampedConcreteAllenstownNH.html" class="dropdown-item">Allenstown</a>
                        <a href="StampedConcreteAmherstNH.html" class="dropdown-item">Amherst</a>
                        <a href="StampedConcreteAtkinsonNH.html" class="dropdown-item">Atkinson</a>
                        <a href="StampedConcreteAuburnNH.html" class="dropdown-item">Auburn</a>
                        <a href="StampedConcreteBedfordNH.html" class="dropdown-item">Bedford</a>
                        <a href="StampedConcreteBowNH.html" class="dropdown-item">Bow</a>
                        <a href="StampedConcreteBrentwoodNH.html" class="dropdown-item">Brentwood</a>
                        <a href="StampedConcreteBrooklineNH.html" class="dropdown-item">Brookline</a>
                        <a href="StampedConcreteCandiaNH.html" class="dropdown-item">Candia</a>
                        <a href="StampedConcreteCanterburyNH.html" class="dropdown-item">Canterbury</a>
                        <a href="StampedConcreteChesterNH.html" class="dropdown-item">Chester</a>
                        <a href="StampedConcreteConcordNH.html" class="dropdown-item">Concord</a>
                        <a href="StampedConcreteDeerfieldNH.html" class="dropdown-item">Deerfield</a>
                        <a href="StampedConcreteDunbartonNH.html" class="dropdown-item">Dunbarton</a>
                        <a href="StampedConcreteEppingNH.html" class="dropdown-item">Epping</a>
                        <a href="StampedConcreteExeterNH.html" class="dropdown-item">Exeter</a>
                        <a href="StampedConcreteFremontNH.html" class="dropdown-item">Fremont</a>
                        <a href="StampedConcreteGilfordNH.html" class="dropdown-item">Gilford</a>
                        <a href="StampedConcreteHollisNH.html" class="dropdown-item">Hollis</a>
                        <a href="StampedConcreteHooksettNH.html" class="dropdown-item">Hooksett</a>
                        <a href="StampedConcreteHopkintonNH.html" class="dropdown-item">Hopkinton</a>
                        <a href="StampedConcreteKingstonNH.html" class="dropdown-item">Kingston</a>
                        <a href="StampedConcreteLaconiaNH.html" class="dropdown-item">Laconia</a>
                        <a href="StampedConcreteLeeNH.html" class="dropdown-item">Lee</a>
                        <a href="StampedConcreteLondonderryNH.html" class="dropdown-item">Londonderry</a>
                        <a href="StampedConcreteManchesterNH.html" class="dropdown-item">Manchester</a>
                        <a href="StampedConcreteMeredithNH.html" class="dropdown-item">Meredith</a>
                        <a href="StampedConcreteMerrimackNH.html" class="dropdown-item">Merrimack</a>
                        <a href="StampedConcreteMilfordNH.html" class="dropdown-item">Milford</a>
                        <a href="StampedConcreteMontVernonNH.html" class="dropdown-item">Mont Vernon</a>
                        <a href="StampedConcreteNashuaNH.html" class="dropdown-item">Nashua</a>
                        <a href="StampedConcreteNorthHamptonNH.html" class="dropdown-item">North Hampton</a>
                        <a href="StampedConcreteNottinghamNH.html" class="dropdown-item">Nottingham</a>
                        <a href="StampedConcretePelhamNH.html" class="dropdown-item">Pelham</a>
                        <a href="StampedConcretePembrokeNH.html" class="dropdown-item">Pembroke</a>
                        <a href="StampedConcretePlaistowNH.html" class="dropdown-item">Plaistow</a>
                        <a href="StampedConcreteRaymondNH.html" class="dropdown-item">Raymond</a>
                        <a href="StampedConcreteSalemNH.html" class="dropdown-item">Salem</a>
                        <a href="StampedConcreteSandownNH.html" class="dropdown-item">Sandown</a>
                        <a href="StampedConcreteStrathamNH.html" class="dropdown-item">Stratham</a>
                        <a href="StampedConcreteWindhamNH.html" class="dropdown-item">Windham</a>
                    </div>
                </div>
                <a href="contact.html" class="nav-link">Contact Us</a>
            </nav>
        </div>
    </header>

    <section class="hero" style="min-height: 65vh;">
        <div class="hero-content">
            <div class="local-badge"><i class="fas fa-map-pin"></i> Serving $($D.Name), NH $($D.Zip)</div>
            <h1 style="margin-top: 1rem;">Stamped Concrete in <span>$($D.Name), NH</span></h1>
            <p>$($D.HeroSubline)</p>
            <div style="display: flex; gap: 1rem; justify-content: center; flex-wrap: wrap; margin-top: 1rem;">
                <a href="contact.html" class="btn btn-primary">Get a Free Estimate</a>
                <a href="tel:18887565377" class="btn btn-outline" style="border-color: #fff; color: #fff;">Call (888) 756-5377</a>
            </div>
        </div>
    </section>

    <section style="background: var(--secondary); padding: 1rem 0;">
        <div class="container">
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(150px, 1fr)); gap: 1rem;">
                <div class="stat-box"><div class="stat-number">40+</div><div class="stat-label" style="color: #a8a29e;">Years Experience</div></div>
                <div class="stat-box"><div class="stat-number">500+</div><div class="stat-label" style="color: #a8a29e;">Projects Completed</div></div>
                <div class="stat-box"><div class="stat-number">5.0</div><div class="stat-label" style="color: #a8a29e;">$([char]0x2B50) Google Rating</div></div>
                <div class="stat-box"><div class="stat-number">$($D.DistMin)</div><div class="stat-label" style="color: #a8a29e;">Min. from $($D.Name)</div></div>
            </div>
        </div>
    </section>

    <section class="section bg-light">
        <div class="container animate-on-scroll">
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 4rem; align-items: center;">
                <div>
                    <h2 class="section-title">$($D.Name)'s Go-To Stamped Concrete Contractor</h2>
                    <p style="color: var(--concrete); margin-bottom: 1.5rem;">$($D.IntroPara1)</p>
                    <p style="color: var(--concrete); margin-bottom: 1.5rem;">$($D.IntroPara2)</p>
                    <p style="color: var(--concrete); margin-bottom: 1.5rem;">$($D.IntroPara3)</p>
                    <a href="contact.html" class="btn btn-primary">Schedule Your Free On-Site Estimate</a>
                </div>
                <div><img src="images/hero_concrete_patio.png" alt="Stamped concrete patio installation in $($D.Name) NH" style="border-radius: var(--border-radius); box-shadow: var(--box-shadow); width: 100%;"></div>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container animate-on-scroll">
            <div class="text-center">
                <h2 class="section-title">$($D.Name) Neighborhoods We Serve</h2>
                <p class="section-subtitle">We've completed stamped concrete projects across every corner of $($D.Name), NH $($D.Zip).</p>
            </div>
            <div style="display: flex; flex-wrap: wrap; gap: 0.75rem; justify-content: center; margin-top: 2rem;">
$nhoodHtml
            </div>
            <p class="text-center" style="margin-top: 1.5rem; color: var(--concrete); font-size: 0.9rem;">Also serving neighboring $nearbyInline</p>
        </div>
    </section>

    <section class="section bg-light">
        <div class="container animate-on-scroll">
            <div class="text-center">
                <h2 class="section-title">Recent $($D.Name) Projects</h2>
                <p class="section-subtitle">See what we've done for your neighbors right here in $($D.Name).</p>
            </div>
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 2rem; margin-top: 3rem;">
$projHtml
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container animate-on-scroll">
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 4rem; align-items: center;">
                <div><img src="images/concrete_sealing.png" alt="Concrete project in $($D.Name) NH" style="border-radius: var(--border-radius); box-shadow: var(--box-shadow); width: 100%;"></div>
                <div>
                    <span class="local-badge" style="margin-bottom: 1rem;">Case Study</span>
                    <h2 class="section-title" style="font-size: 1.75rem;">$($D.CaseStudy.Title)</h2>
                    <p style="color: var(--concrete); margin-bottom: 1.5rem;">$($D.CaseStudy.Para1)</p>
                    <p style="color: var(--concrete); margin-bottom: 1.5rem;">$($D.CaseStudy.Para2)</p>
                    <a href="resealingstampedconcrete.html" class="btn btn-outline">Learn About Our Services</a>
                </div>
            </div>
        </div>
    </section>

    <section class="section bg-light">
        <div class="container animate-on-scroll">
            <div class="text-center">
                <h2 class="section-title">Our Services for $($D.Name) Homes</h2>
                <p class="section-subtitle">Full-service decorative concrete solutions tailored to $($D.County) properties.</p>
            </div>
            <div class="services-grid">
                <div class="service-card animate-on-scroll">
                    <div class="service-img-wrapper"><img src="images/hero_concrete_patio.png" alt="Stamped concrete patio $($D.Name) NH" class="service-img"></div>
                    <div class="service-content"><h3>Stamped Concrete Patios</h3><p>$svc1</p><a href="stampedconcretepatios.html" class="service-link">Learn More <i class="fas fa-arrow-right"></i></a></div>
                </div>
                <div class="service-card animate-on-scroll" style="transition-delay: 0.1s;">
                    <div class="service-img-wrapper"><img src="images/stamped_walkway.png" alt="Decorative walkway $($D.Name) NH" class="service-img"></div>
                    <div class="service-content"><h3>Walkways &amp; Entryways</h3><p>$svc2</p><a href="services.html" class="service-link">Learn More <i class="fas fa-arrow-right"></i></a></div>
                </div>
                <div class="service-card animate-on-scroll" style="transition-delay: 0.2s;">
                    <div class="service-img-wrapper"><img src="images/concrete_pool_deck.png" alt="Pool deck $($D.Name) NH" class="service-img"></div>
                    <div class="service-content"><h3>Pool Decks</h3><p>$svc3</p><a href="stampedconcretepooldecks.html" class="service-link">Learn More <i class="fas fa-arrow-right"></i></a></div>
                </div>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container animate-on-scroll">
            <div class="text-center">
                <h2 class="section-title">What $($D.Name) Homeowners Say</h2>
                <p class="section-subtitle">Don't just take our word for it $([char]0x2014) hear from your neighbors.</p>
            </div>
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 2rem; margin-top: 3rem;">
$testHtml
            </div>
        </div>
    </section>

    <section class="section bg-light">
        <div class="container animate-on-scroll">
            <div class="text-center">
                <h2 class="section-title">$($D.Name) Stamped Concrete FAQ</h2>
                <p class="section-subtitle">Common questions we hear from $($D.Name) homeowners.</p>
            </div>
            <div style="max-width: 800px; margin: 3rem auto 0;">
$faqHtml
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container animate-on-scroll">
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 4rem; align-items: center;">
                <div>
                    <h2 class="section-title">Part of the $($D.Name) Community</h2>
                    <p style="color: var(--concrete); margin-bottom: 1.5rem;">We don't just work in $($D.Name) $([char]0x2014) we're invested in this community. Over the years, we've been proud to:</p>
                    <ul style="display: flex; flex-direction: column; gap: 1rem; margin-bottom: 2rem;">
$commHtml
                    </ul>
                </div>
                <div>
                    <div class="promo-banner">
                        <i class="fas fa-drafting-compass" style="font-size: 2rem; color: var(--primary); margin-bottom: 1rem; position: relative;"></i>
                        <h3>Free On-Site Design Consultation</h3>
                        <p>We bring the showroom to your $($D.Name) doorstep. During your free consultation, we'll walk your property, discuss layout ideas, and show you <strong style="color: var(--primary);">physical stamp pattern samples and color swatches</strong> so you can see exactly how your new patio or walkway will look.</p>
                        <div style="display: flex; flex-direction: column; gap: 0.5rem; align-items: center; margin-bottom: 1.5rem; position: relative;">
                            <span style="color: #a8a29e; font-size: 0.9rem;"><i class="fas fa-check" style="color: var(--primary); margin-right: 0.35rem;"></i> Hands-on pattern &amp; color samples</span>
                            <span style="color: #a8a29e; font-size: 0.9rem;"><i class="fas fa-check" style="color: var(--primary); margin-right: 0.35rem;"></i> Custom layout recommendations</span>
                            <span style="color: #a8a29e; font-size: 0.9rem;"><i class="fas fa-check" style="color: var(--primary); margin-right: 0.35rem;"></i> Drainage &amp; site assessment included</span>
                        </div>
                        <a href="contact.html" class="btn btn-primary" style="position: relative;">Book Your Consultation</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section bg-light">
        <div class="container animate-on-scroll">
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 4rem; align-items: start;">
                <div>
                    <h2 class="section-title">Getting to Our Office from $($D.Name)</h2>
                    <p style="color: var(--concrete); margin-bottom: 1.5rem;">Our headquarters is at <strong>8 Chenell Drive, Concord, NH 03301</strong> $([char]0x2014) just $($D.DistMin) minutes from $($D.Name). Of course, we always come to you for free on-site estimates!</p>
                    <div class="directions-box">
                        <h4 style="margin-bottom: 1rem;"><i class="fas fa-route" style="color: var(--primary); margin-right: 0.5rem;"></i> $($D.Directions.From):</h4>
                        <ol>
$dirHtml
                        </ol>
                        <p style="margin-top: 1rem; font-size: 0.9rem; color: var(--concrete);"><i class="fas fa-clock" style="color: var(--primary); margin-right: 0.25rem;"></i> Approx. $($D.DistMin) minutes / $($D.DistMiles) miles</p>
                    </div>
                </div>
                <div>
                    <h2 class="section-title">Local Landmarks Near Our Projects</h2>
                    <p style="color: var(--concrete); margin-bottom: 1.5rem;">We've completed projects near these well-known $($D.Name) spots:</p>
                    <ul style="display: flex; flex-direction: column; gap: 1rem;">
$lmHtml
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="section bg-dark text-center">
        <div class="container animate-on-scroll">
            <h2 class="section-title" style="color: #fff;">Ready to Transform Your $($D.Name) Property?</h2>
            <p class="section-subtitle" style="color: #d6d3d1;">Join dozens of $($D.Name) homeowners who trust Northeast Decorative Concrete. Free on-site estimates $([char]0x2014) just $($D.DistMin) minutes from our Concord office.</p>
            <div style="display: flex; gap: 1rem; justify-content: center; flex-wrap: wrap;">
                <a href="contact.html" class="btn btn-primary" style="font-size: 1.125rem; padding: 1rem 2.5rem;">Get Your Free Estimate</a>
                <a href="tel:18887565377" class="btn btn-outline" style="font-size: 1.125rem; padding: 1rem 2.5rem; border-color: #fff; color: #fff;">Call (888) 756-5377</a>
            </div>
        </div>
    </section>

    <section class="section bg-light">
        <div class="container animate-on-scroll">
            <div class="text-center">
                <h2 class="section-title">$($D.Name) to Our Concord Office</h2>
                <p class="section-subtitle">Just $($D.DistMin) minutes away $([char]0x2014) or we'll come to you for a free on-site estimate.</p>
            </div>
            <div style="margin-top: 2rem; border-radius: var(--border-radius); overflow: hidden; box-shadow: var(--box-shadow); line-height: 0;">
                <iframe src="https://maps.google.com/maps?width=100%25&height=450&hl=en&q=$($D.Name)+NH+to+8+Chenell+Dr+Concord+NH&t=&z=11&ie=UTF8&iwloc=B&output=embed" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <div class="text-center" style="margin-top: 1.5rem;">
                <a href="$mapsUrl" target="_blank" rel="noopener noreferrer" class="btn btn-outline" style="font-size: 0.95rem;"><i class="fas fa-directions" style="margin-right: 0.5rem;"></i> Open Directions in Google Maps</a>
            </div>
        </div>
    </section>

    <footer class="footer">
        <div class="footer-grid">
            <div class="footer-col">
                <h4>Northeast Decorative Concrete, LLC</h4>
                <p style="color: #d6d3d1; margin-bottom: 1rem;">Premium stamped concrete solutions. Proudly serving $($D.Name), NH and all of $($D.County).</p>
                <div style="display: flex; gap: 1rem; font-size: 1.25rem;">
                    <a href="https://www.facebook.com/NortheastDecorativeConcreteLlc" aria-label="Facebook" target="_blank" rel="noopener noreferrer"><i class="fab fa-facebook"></i></a>
                    <a href="https://www.instagram.com/northeastdecorativeconcretellc" aria-label="Instagram" target="_blank" rel="noopener noreferrer"><i class="fab fa-instagram"></i></a>
                    <a href="https://www.pinterest.com/stampedconcretenh" aria-label="Pinterest" target="_blank" rel="noopener noreferrer"><i class="fab fa-pinterest"></i></a>
                    <a href="https://www.youtube.com/channel/UCzEO0WipUKjQ3zF9DRwpJLg" aria-label="YouTube" target="_blank" rel="noopener noreferrer"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
            <div class="footer-col">
                <h4>Quick Links</h4>
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="about.html">About Us</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li><a href="areas-we-service.html">Areas We Service</a></li>
                    <li><a href="contact.html">Contact Us</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>Nearby Towns</h4>
                <ul>
$nearbyLinksHtml
                </ul>
            </div>
            <div class="footer-col">
                <h4>Contact Info</h4>
                <ul>
                    <li><i class="fas fa-phone mr-2" style="margin-right: 0.5rem; color: var(--primary);"></i> <a href="tel:18887565377">1 (888) 756-5377</a></li>
                    <li><i class="fas fa-envelope mr-2" style="margin-right: 0.5rem; color: var(--primary);"></i> info@northeastdecorativeconcrete.com</li>
                    <li><i class="fas fa-map-marker-alt mr-2" style="margin-right: 0.5rem; color: var(--primary);"></i> 8 Chenell Dr, Concord</li>
                </ul>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2026 Northeast Decorative Concrete, LLC. All rights reserved. | Serving $($D.Name), NH $($D.Zip)</p>
        </div>
    </footer>
    <script src="script.js"></script>
</body>
</html>
"@
    return $html
}
