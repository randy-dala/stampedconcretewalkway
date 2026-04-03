. "$PSScriptRoot\town_template.ps1"

$towns = @(
@{
    Name="Amherst"; FileKey="AmherstNH"; County="Hillsborough County"; Pop="11,201"; Zip="03031"; DistMin="25"; DistMiles="18"
    TitleSuffix="Patios, Walkways & Pool Decks Near Baboosic Lake"
    MetaDesc="Custom patios, walkways & pool decks for Village Green, Baboosic Lake & Boston Post Road homeowners. See our local projects!"
    HeroSubline="From the historic Village Green to Baboosic Lake — premium decorative concrete for Amherst homeowners. Just 25 minutes from our Concord headquarters."
    IntroPara1="Amherst is one of <strong>Hillsborough County's</strong> most desirable communities — a picturesque New England town of about 11,201 residents known for its stunning <strong>Village Green</strong>, scenic <strong>Baboosic Lake</strong>, and beautifully maintained homes along Boston Post Road. Homeowners here appreciate craftsmanship, and that's exactly what we deliver."
    IntroPara2="Our Concord headquarters is just a 25-minute drive via Route 101 to Amherst. Over the years we've completed dozens of projects throughout the Village Green area, along Boston Post Road, and in neighborhoods surrounding Baboosic Lake and Ponemah Bog."
    IntroPara3="Amherst's terrain presents unique challenges — the sandy loam soils near Baboosic Lake require careful base preparation, while properties on hillier terrain along Joe English Road need engineered grading for proper drainage. Our 40+ years of local experience means we anticipate these conditions before breaking ground."
    SvcPatios="Amherst backyards are made for entertaining. Our custom patios are engineered for the sandy soils common near Baboosic Lake and the hillier terrain along Joe English Road. Choose from ashlar slate, fieldstone, cobblestone, or dozens more patterns."
    SvcWalkways="Add curb appeal to your Amherst property with a stunning stamped walkway. Many of the stately colonial homes along Boston Post Road and near the Village Green get a complete transformation with a new front walkway."
    SvcPools="Amherst summers by Baboosic Lake deserve a resort-style pool deck. Our slip-resistant, heat-reflective stamped concrete pool decks stay comfortable for bare feet even on the hottest July afternoons."
    Neighborhoods=@("Village Green Area","Baboosic Lake","Boston Post Road","Ponemah Bog","Cricket Corner","Joe English Road","Mack Hill","Mont Vernon Road","Amherst Street","Thornton Ferry")
    NearbyTowns=@(@{N="Milford";F="MilfordNH"},@{N="Mont Vernon";F="MontVernonNH"},@{N="Bedford";F="BedfordNH"},@{N="Merrimack";F="MerrimackNH"},@{N="Hollis";F="HollisNH"})
    Projects=@(
        @{Area="Village Green";Pattern="Pennsylvania Bluestone";Title="Bluestone Patio & Firepit — Boston Post Road";Desc="Installed a 500 sq ft Pennsylvania bluestone pattern patio with integrated fire pit for a colonial home steps from the Village Green. The design complemented the home's historic character while adding modern outdoor living functionality."},
        @{Area="Baboosic Lake";Pattern="Cobblestone";Title="Lakeside Walkway & Steps — Baboosic Lake Road";Desc="Designed a winding cobblestone-pattern walkway with custom stamped steps leading from the home down to the lakefront. Engineered for the sandy soil conditions typical of shorefront properties around Baboosic Lake."},
        @{Area="Joe English Road";Pattern="Ashlar Slate";Title="Pool Deck & Outdoor Kitchen — Joe English Hill";Desc="Created a resort-style stamped concrete pool deck with outdoor kitchen pad for a hilltop property off Joe English Road. Used light desert sand coloring to keep the surface cool and complement the panoramic views."}
    )
    CaseStudy=@{Title="Restoring a Historic Boston Post Road Walkway";Para1="A homeowner on Boston Post Road near the Village Green contacted us after their 10-year-old plain concrete walkway had cracked from tree root pressure and years of frost heave. The old walkway was an eyesore next to their beautifully maintained colonial home.";Para2="We removed the damaged concrete, rerouted the path to avoid the mature oak's root zone, and installed a new herringbone brick pattern stamped concrete walkway with decorative borders. The homeowner said it <em>'finally matches the character of our historic home.'</em> The project was completed in just 3 days."}
    Testimonials=@(
        @{Author="Sarah & David M.";Street="Boston Post Road";Text="Our new patio off Boston Post Road is absolutely stunning. The crew matched the bluestone pattern perfectly to our colonial home's style. Two winters in and it still looks flawless. Every neighbor who walks by the Village Green comments on it!"},
        @{Author="Tom K.";Street="Baboosic Lake Road";Text="Living near Baboosic Lake, we were concerned about the sandy soil. Northeast Decorative went above and beyond with the base preparation. Our pool deck has survived three harsh winters without a single issue. Couldn't be happier."},
        @{Author="Lisa R.";Street="Joe English Road";Text="From the initial consultation at our place on Joe English Road to the final seal coat, the whole experience was professional and stress-free. The ashlar slate pattern they recommended looks incredible against our stone exterior. Worth every penny."}
    )
    FAQs=@(
        @{Q="Do I need a building permit for a stamped concrete patio in Amherst?";A="Amherst's Building Department generally does not require a permit for a ground-level patio not attached to the structure. However, projects near Baboosic Lake, Ponemah Bog, or within the Souhegan River watershed may require review under Amherst's wetland and shoreland protection ordinances. We handle all permit research during the estimation process."},
        @{Q="Will stamped concrete hold up near Baboosic Lake?";A="Absolutely. The sandy loam soils near Baboosic Lake actually drain well, which is beneficial for concrete longevity. We install a compacted gravel base tailored to local soil conditions and use air-entrained concrete to withstand freeze-thaw cycles. With proper sealing every 2-3 years, our installations last 25+ years."},
        @{Q="What stamped concrete patterns are popular in Amherst?";A="Amherst homeowners tend to favor patterns that complement the town's colonial and New England architectural character. <strong>Pennsylvania bluestone</strong>, <strong>ashlar slate</strong>, and <strong>herringbone brick</strong> are our top three requests here. We bring physical samples to your home so you can see how each pattern looks alongside your exterior."},
        @{Q="What's the best time of year to install stamped concrete in Amherst?";A="Our season runs from <strong>late April through mid-October</strong>. Amherst's slightly elevated terrain means spring drying comes a bit earlier than lower-lying areas, so we can often start projects by late April. Fall is an excellent time for installations — the cooler temperatures and lower humidity provide ideal curing conditions."},
        @{Q="How do you handle Amherst properties on steep terrain?";A="Many Amherst properties, especially along Joe English Road and Mack Hill, sit on significant slopes. We engineer proper grading, retaining solutions, and drainage channels to ensure water flows away from the patio surface. Our 40+ years of experience with Hillsborough County terrain means we've solved every slope challenge imaginable."}
    )
    Community=@("Support the <strong>Amherst Village Green</strong> seasonal events and community gatherings","Contribute to <strong>Baboosic Lake</strong> conservation efforts and shoreline beautification","Sponsor youth activities through <strong>Amherst Recreation Department</strong> programs","Provide complimentary consultations for <strong>Amherst Historical Society</strong> restoration projects")
    Directions=@{From="From Amherst Town Hall (2 Main Street)";Steps=@("Head south on Main Street toward Boston Post Road","Turn right onto Route 101A West","Merge onto NH Route 101 East toward Manchester/Concord","Continue on Route 101 East for approximately 14 miles","Take Exit 1 onto I-93 North toward Concord","Take Exit 12S for Chenell Drive","Turn right onto Chenell Drive — our building is on the right")}
    Landmarks=@(
        @{Icon="landmark";Name="Amherst Village Green";Desc="The heart of Amherst — we've completed projects in the surrounding historic neighborhood"},
        @{Icon="water";Name="Baboosic Lake";Desc="Popular lakeside community where we've installed numerous patios and pool decks"},
        @{Icon="mountain";Name="Joe English Hill";Desc="Scenic hilltop area with panoramic views and several of our premium installations"},
        @{Icon="tree";Name="Ponemah Bog";Desc="Protected wetland area — we're experienced with setback requirements near sensitive zones"},
        @{Icon="school";Name="Amherst Middle School";Desc="Central Amherst landmark near many of our residential projects"}
    )
},
@{
    Name="Atkinson"; FileKey="AtkinsonNH"; County="Rockingham County"; Pop="6,751"; Zip="03811"; DistMin="50"; DistMiles="42"
    TitleSuffix="Patios, Walkways & Pool Decks in Southern NH"
    MetaDesc="Custom patios, walkways & pool decks for Pope Road, Main Street & Academy Avenue homeowners. Free estimates!"
    HeroSubline="Premium decorative concrete for Atkinson homeowners — from Pope Road to Academy Avenue. Serving the southern NH community you love."
    IntroPara1="Atkinson is a charming <strong>Rockingham County</strong> residential community of about 6,751 residents known for its excellent schools, rural character, and family-friendly atmosphere. Nestled in southern New Hampshire near the Massachusetts border, Atkinson homeowners value quality improvements that enhance their properties."
    IntroPara2="We've completed numerous projects across Atkinson — from the established neighborhoods along <strong>Pope Road</strong> and <strong>Main Street</strong> to the newer developments off <strong>Academy Avenue</strong> and <strong>Providence Hill Road</strong>."
    IntroPara3="Atkinson's well-drained glacial till soils are generally favorable for concrete work, though some areas near <strong>Big Island Pond</strong> have higher water tables that require special drainage considerations. Our experience with Rockingham County soil conditions ensures a long-lasting installation every time."
    SvcPatios="Atkinson homes deserve outdoor spaces that match their quality. Our patios are built on reinforced bases suited to the local glacial till soil, with patterns ranging from elegant ashlar slate to rustic fieldstone."
    SvcWalkways="Enhance your Atkinson home's curb appeal with a stamped concrete walkway. The established neighborhoods along Pope Road and Main Street see dramatic transformations with a new decorative entryway."
    SvcPools="Atkinson's peaceful backyard settings are perfect for pool installations. Our slip-resistant, heat-reflective pool decks keep families safe and comfortable all summer."
    Neighborhoods=@("Pope Road","Main Street","Academy Avenue","Providence Hill Road","Big Island Pond","Maple Avenue","Crown Hill Road","Island Pond Road","Sawyer Avenue","East Road")
    NearbyTowns=@(@{N="Plaistow";F="PlaistowNH"},@{N="Salem";F="SalemNH"},@{N="Sandown";F="SandownNH"},@{N="Kingston";F="KingstonNH"},@{N="Hampstead";F="HampsteadNH"})
    Projects=@(
        @{Area="Pope Road";Pattern="Ashlar Slate";Title="Ashlar Slate Patio & Sitting Wall — Pope Road";Desc="Installed a 450 sq ft ashlar slate patio with matching sitting wall for a family on Pope Road. The warm charcoal and sandstone coloring perfectly complemented the home's natural stone foundation."},
        @{Area="Academy Avenue";Pattern="Herringbone Brick";Title="Grand Entryway Walk — Academy Avenue";Desc="Designed an elegant herringbone brick walkway with decorative borders connecting the driveway to the front entrance of an Academy Avenue colonial. The project elevated the entire streetside appearance of the property."},
        @{Area="Big Island Pond";Pattern="Flagstone";Title="Lakeside Pool Deck — Island Pond Road";Desc="Created a natural flagstone-pattern pool deck for a waterfront property near Big Island Pond. Extra drainage engineering was installed to manage the high water table common in this area while maintaining a seamless, beautiful finish."}
    )
    CaseStudy=@{Title="Engineering a Pool Deck Near Big Island Pond";Para1="An Atkinson homeowner on Island Pond Road wanted a stamped concrete pool deck but was told by two other contractors that the high water table made it too risky. They called us for a second opinion.";Para2="Our team performed a site assessment and designed a raised-grade solution with a perimeter French drain system that redirects groundwater away from the deck surface. We poured the deck on a reinforced base with additional fiber mesh for crack resistance. Three years later, the deck is still pristine — and the homeowner has since referred us to four of their neighbors."}
    Testimonials=@(
        @{Author="Mark & Julie H.";Street="Pope Road";Text="The patio they built at our Pope Road home is the best investment we've ever made. The ashlar slate pattern looks like real stone, and it's held up beautifully through three New Hampshire winters. Professional crew from start to finish."},
        @{Author="Chris B.";Street="Academy Avenue";Text="Our new walkway on Academy Avenue is stunning. The herringbone brick pattern looks like it was always part of the house. Quick timeline, clean worksite, and the price was very fair. Already recommended them to neighbors."},
        @{Author="Diana S.";Street="Island Pond Road";Text="After two contractors said our pool deck was too complicated because of the water table, Northeast Decorative figured it out. Three years in and zero issues. They really know what they're doing with challenging sites."}
    )
    FAQs=@(
        @{Q="Do I need a permit for a patio in Atkinson?";A="Atkinson typically does not require a building permit for a standard ground-level patio. However, properties near Big Island Pond or within identified wetland buffers may require review by the Atkinson Conservation Commission. We check all requirements during our free site assessment."},
        @{Q="Will stamped concrete work with Atkinson's soil conditions?";A="Yes. Atkinson's glacial till soils generally drain well and provide a solid base for concrete. Properties closer to Big Island Pond with higher water tables may need additional drainage engineering, which we include in our assessment. Our installations are built to last 25+ years in NH conditions."},
        @{Q="What patterns do Atkinson homeowners prefer?";A="<strong>Ashlar slate</strong> and <strong>fieldstone</strong> are our most popular patterns in Atkinson, as they complement the town's New England residential character. <strong>Herringbone brick</strong> is a popular choice for walkways. We bring samples to show you how each pattern looks with your home."},
        @{Q="What's the best time of year for a concrete project in Atkinson?";A="Our season runs <strong>late April through mid-October</strong>. Southern NH towns like Atkinson often warm up a bit earlier in spring than communities further north, so we can sometimes begin as early as mid-April. Book early — summer slots fill fast."},
        @{Q="How far is your office from Atkinson?";A="Our Concord office is about 50 minutes from Atkinson via I-93. However, we always come directly to your Atkinson home for free consultations and estimates, so the distance is never an inconvenience for you."}
    )
    Community=@("Support <strong>Atkinson Academy</strong> events and fundraising activities","Contribute to <strong>Kimball House Museum</strong> preservation in Atkinson center","Sponsor seasonal community events at <strong>Atkinson Town Hall</strong>","Participate in <strong>Big Island Pond</strong> shoreline conservation efforts")
    Directions=@{From="From Atkinson Town Hall (21 Academy Avenue)";Steps=@("Head north on Academy Avenue to Main Street (Route 121)","Turn left onto Route 121 West","Continue to Route 111 West, then merge onto I-93 North","Follow I-93 North for approximately 35 miles toward Concord","Take Exit 12S for Chenell Drive","Turn right onto Chenell Drive — our building is on the right")}
    Landmarks=@(
        @{Icon="school";Name="Atkinson Academy";Desc="Historic academy in town center, near several of our residential projects"},
        @{Icon="water";Name="Big Island Pond";Desc="Scenic pond community where we've engineered drainage-sensitive pool decks"},
        @{Icon="landmark";Name="Kimball House Museum";Desc="Atkinson's historic landmark near our town center installations"},
        @{Icon="tree";Name="Pope Road Conservation Area";Desc="Natural area adjacent to neighborhoods we frequently serve"},
        @{Icon="church";Name="Atkinson Congregational Church";Desc="Community landmark surrounded by homes we've improved"}
    )
},
@{
    Name="Auburn"; FileKey="AuburnNH"; County="Rockingham County"; Pop="5,449"; Zip="03032"; DistMin="20"; DistMiles="15"
    TitleSuffix="Patios, Walkways & Pool Decks Near Lake Massabesic"
    MetaDesc="Custom patios, walkways & pool decks for Bunker Hill Road, Chester Road & Lake Massabesic area homeowners. Free estimates!"
    HeroSubline="From Bunker Hill Road to Lake Massabesic — premium decorative concrete for Auburn homeowners. Just 20 minutes from our Concord headquarters."
    IntroPara1="Auburn is a scenic <strong>Rockingham County</strong> community of about 5,449 residents, defined by its beautiful <strong>Lake Massabesic</strong> watershed, rolling hills, and quintessential New England rural character. Located just southeast of Manchester, Auburn offers the perfect blend of country living and convenient access."
    IntroPara2="Our Concord office is just 20 minutes from Auburn via I-93 and Route 101. We've completed projects throughout town — along <strong>Bunker Hill Road</strong>, <strong>Chester Road</strong>, <strong>Hooksett Road</strong>, and in the neighborhoods surrounding the Lake Massabesic watershed."
    IntroPara3="Auburn's terrain features a mix of rocky ledge and sandy glacial deposits. Properties near Lake Massabesic fall within the <strong>Manchester Water Works</strong> protected watershed, which means special setback and drainage requirements. We're fully experienced with these regulations and engineer every project accordingly."
    SvcPatios="Auburn homes sit on varied terrain — from rocky hilltops to sandy lakeside lots. Our patios are custom-engineered for your specific site conditions, with patterns chosen to complement Auburn's rustic New England aesthetic."
    SvcWalkways="Boost your Auburn property's curb appeal with a stamped walkway. The country homes along Chester Road and Bunker Hill Road look stunning with a new cobblestone or flagstone entryway."
    SvcPools="Auburn summers are made for backyard pools. Our slip-resistant stamped concrete pool decks are perfect for Auburn's residential lots, with surfaces that stay cool even in direct sun."
    Neighborhoods=@("Bunker Hill Road","Chester Road","Hooksett Road","Londonderry Turnpike","Raymond Road","Lake Massabesic Area","Pingree Hill","Depot Road","Wilson Crossing Road","Nutt Road")
    NearbyTowns=@(@{N="Hooksett";F="HooksettNH"},@{N="Chester";F="ChesterNH"},@{N="Candia";F="CandiaNH"},@{N="Manchester";F="ManchesterNH"},@{N="Londonderry";F="LondonderryNH"})
    Projects=@(
        @{Area="Bunker Hill Road";Pattern="Fieldstone";Title="Fieldstone Patio & Walkway — Bunker Hill Road";Desc="Installed a natural fieldstone pattern patio and matching walkway for a rural Auburn property on Bunker Hill Road. The design blends seamlessly with the surrounding stone walls and wooded landscape."},
        @{Area="Chester Road";Pattern="Ashlar Slate";Title="Front Entry Makeover — Chester Road";Desc="Transformed the front approach of a Chester Road colonial with an ashlar slate walkway, landing, and decorative step risers. The warm gray tones complement the home's granite foundation beautifully."},
        @{Area="Lake Massabesic";Pattern="Sandstone";Title="Watershed-Compliant Pool Deck — Pingree Hill";Desc="Designed and installed a stamped concrete pool deck within the Lake Massabesic watershed zone. Engineered with full compliance to Manchester Water Works setback requirements while delivering a beautiful sandstone finish."}
    )
    CaseStudy=@{Title="Building Within the Lake Massabesic Watershed";Para1="An Auburn homeowner near Pingree Hill wanted a new patio and pool deck, but their property falls within the Lake Massabesic protected watershed. Two contractors had turned them down due to the environmental compliance requirements.";Para2="Our team worked directly with Manchester Water Works to ensure full compliance with stormwater management rules. We installed a pervious border around the patio to manage runoff and used watershed-safe sealant products. The project was approved on first review, and the homeowner now has the outdoor living space they dreamed of — fully compliant and built to last."}
    Testimonials=@(
        @{Author="Steve & Maria G.";Street="Bunker Hill Road";Text="The fieldstone patio they installed at our place on Bunker Hill Road looks absolutely natural — like it's been there for decades. The crew worked around our stone walls and mature trees perfectly. Three winters and not a single crack."},
        @{Author="Brian T.";Street="Chester Road";Text="Our new walkway on Chester Road completely transformed the front of our house. The ashlar slate pattern was the perfect choice for our colonial. Professional crew, clean job site, done in 3 days. Highly recommend."},
        @{Author="Amanda & Jeff P.";Street="Pingree Hill Road";Text="We thought our pool deck project was impossible because of the watershed rules. Northeast Decorative handled all the permitting and built it right. It's been two years and it's perfect. These guys really know their stuff."}
    )
    FAQs=@(
        @{Q="Are there special rules for concrete work near Lake Massabesic?";A="Yes. Properties within the <strong>Lake Massabesic watershed</strong> (managed by Manchester Water Works) have specific setback and stormwater management requirements. We're fully experienced with these regulations and handle all compliance during the project planning phase at no additional cost to you."},
        @{Q="Will stamped concrete work on Auburn's rocky terrain?";A="Absolutely. Auburn has a mix of bedrock ledge and glacial deposits. For rocky sites, we adjust our excavation approach and base preparation to work with the terrain rather than against it. Our 40+ years of experience with NH geology means we've handled it all."},
        @{Q="Do I need a permit for a patio in Auburn?";A="Auburn typically does not require a building permit for standard ground-level patios. However, watershed zone properties and lots near wetlands may need additional approvals. We verify all requirements during our free site assessment."},
        @{Q="What's the best season to pour concrete in Auburn?";A="Our Auburn season runs <strong>late April through mid-October</strong>. Auburn's well-drained soils often allow us to start a bit earlier in spring than lower-lying communities. Fall installations benefit from cooler temperatures and ideal curing conditions."},
        @{Q="How do you handle Auburn properties with ledge?";A="Rocky ledge is common in Auburn, especially along Bunker Hill Road and Pingree Hill. When we encounter ledge, we adapt our base preparation — sometimes using a thicker gravel overlay instead of excavating into rock. The result is equally durable and often more cost-effective than blasting."}
    )
    Community=@("Support <strong>Auburn Village School</strong> community programs and events","Contribute to <strong>Lake Massabesic</strong> watershed conservation and clean-up efforts","Sponsor <strong>Auburn Historical Society</strong> preservation projects","Participate in <strong>Auburn Town Day</strong> celebrations and community activities")
    Directions=@{From="From Auburn Town Hall (47 Chester Road)";Steps=@("Head north on Chester Road toward Hooksett Road","Turn left onto Hooksett Road (Route 28)","Continue north on Route 28 through Hooksett","Merge onto I-93 North toward Concord","Take Exit 12S for Chenell Drive","Turn right onto Chenell Drive — our building is on the right")}
    Landmarks=@(
        @{Icon="water";Name="Lake Massabesic";Desc="Manchester's drinking water reservoir — we're experienced with its watershed regulations"},
        @{Icon="mountain";Name="Bunker Hill";Desc="Scenic rural area where we've completed numerous residential projects"},
        @{Icon="school";Name="Auburn Village School";Desc="Community hub surrounded by homes we've improved"},
        @{Icon="tree";Name="Massabesic Audubon Center";Desc="Nature center near several of our lakeside installations"},
        @{Icon="landmark";Name="Auburn Town Hall";Desc="Central Auburn landmark near our Chester Road projects"}
    )
},
@{
    Name="Bedford"; FileKey="BedfordNH"; County="Hillsborough County"; Pop="22,041"; Zip="03110"; DistMin="18"; DistMiles="14"
    TitleSuffix="Premium Patios, Walkways & Pool Decks"
    MetaDesc="Custom patios, walkways & pool decks for Bedford Village, Route 101 corridor & Liberty Hill homeowners. Free estimates!"
    HeroSubline="Premium decorative concrete for Bedford's finest homes — from Bedford Village to Liberty Hill. Just 18 minutes from our Concord office."
    IntroPara1="Bedford is one of <strong>Hillsborough County's</strong> most prestigious communities — a town of 22,041 residents consistently ranked among New Hampshire's best places to live. With its excellent schools, upscale neighborhoods, and thriving business district along <strong>Route 101</strong>, Bedford homeowners expect nothing short of excellence."
    IntroPara2="Our Concord headquarters is just 18 minutes north via I-293. We've completed premium installations throughout Bedford — from the established estates along <strong>Bedford Center Road</strong> and <strong>Liberty Hill Road</strong> to the executive neighborhoods off <strong>Donald Street</strong> and <strong>Joppa Hill Road</strong>."
    IntroPara3="Bedford's well-maintained properties deserve equally premium hardscape. The town's terrain varies from flat lowlands near the <strong>Merrimack River</strong> to the rolling hills of Liberty Hill and Joppa Hill, each requiring different engineering approaches. Our extensive experience in Bedford ensures every installation matches the standard this community demands."
    SvcPatios="Bedford homeowners expect premium results. Our custom patios feature the finest patterns — European fan, Italian slate, and Pennsylvania bluestone — designed to complement Bedford's upscale architectural styles from colonial to contemporary."
    SvcWalkways="Bedford's executive homes deserve grand entryways. Our stamped concrete walkways create a stunning first impression, with patterns and colors chosen to complement your home's architectural style and landscaping."
    SvcPools="Bedford's resort-style backyards demand premium pool decks. Our slip-resistant stamped concrete surrounds turn your pool area into a private retreat that rivals any luxury resort."
    Neighborhoods=@("Bedford Village","Liberty Hill Road","Joppa Hill Road","Donald Street","Bedford Center Road","Wallace Road","Route 101 Corridor","Ministerial Road","Pulpit Road","Back River Road")
    NearbyTowns=@(@{N="Manchester";F="ManchesterNH"},@{N="Merrimack";F="MerrimackNH"},@{N="Amherst";F="AmherstNH"},@{N="Milford";F="MilfordNH"},@{N="Bow";F="BowNH"})
    Projects=@(
        @{Area="Liberty Hill";Pattern="European Fan";Title="European Fan Patio & Outdoor Living — Liberty Hill Road";Desc="Installed an 800 sq ft European fan pattern patio with integrated outdoor kitchen pad, fire pit surround, and sitting walls for a Liberty Hill estate. The warm sandstone and charcoal accent colors create a resort-worthy outdoor living space."},
        @{Area="Bedford Village";Pattern="Italian Slate";Title="Grand Entry & Motor Court — Bedford Center Road";Desc="Designed a sweeping Italian slate walkway and motor court for a Bedford Center Road estate. The project included decorative stamped steps with hand-carved stone texture and copper-toned accent coloring."},
        @{Area="Joppa Hill";Pattern="Ashlar Slate";Title="Infinity Pool Deck — Joppa Hill Road";Desc="Created a premium stamped concrete deck surrounding an infinity-edge pool on Joppa Hill with panoramic views. Used a cool-tone travertine finish to keep the surface comfortable and complement the contemporary home's clean lines."}
    )
    CaseStudy=@{Title="Designing an Outdoor Living Room for a Bedford Estate";Para1="A Bedford homeowner on Liberty Hill Road envisioned a complete outdoor living transformation: a large patio for dining and entertaining, an integrated fire pit area, and a separate poolside lounge space — all with a cohesive design that complemented their colonial estate.";Para2="We designed a multi-zone layout using European fan pattern for the main patio, transitioning to a contrasting ashlar border around the fire pit. The entire 1,200 sq ft project was completed in just 8 days. The homeowner hosted their first garden party two weeks later and called it <em>'the best investment we've made in 20 years of living in Bedford.'</em>"}
    Testimonials=@(
        @{Author="Richard & Ellen W.";Street="Liberty Hill Road";Text="We interviewed five contractors for our outdoor living project. Northeast Decorative was the only one who truly understood our vision. The European fan pattern patio they created is absolutely stunning — our guests always think it's natural stone. Flawless execution."},
        @{Author="James C.";Street="Bedford Center Road";Text="The motor court and entry walkway they designed for our Bedford Center Road home exceeded every expectation. Italian slate pattern with copper accents — it completely elevated our curb appeal. Impeccable craftsmanship and attention to detail."},
        @{Author="Katherine M.";Street="Joppa Hill Road";Text="Our pool deck on Joppa Hill is gorgeous. The travertine pattern looks incredible, and the surface stays cool even in August. Every contractor since has complimented the quality of the concrete work. Truly premium quality."}
    )
    FAQs=@(
        @{Q="Do Bedford properties require permits for stamped concrete?";A="Bedford typically does not require a building permit for ground-level patios and walkways. Larger projects involving retaining walls, structures, or work near the Merrimack River floodplain may need review. We verify all requirements during your free consultation."},
        @{Q="What patterns work best with Bedford's colonial-style homes?";A="Bedford's predominantly colonial and traditional architecture pairs beautifully with <strong>Pennsylvania bluestone</strong>, <strong>European fan</strong>, and <strong>ashlar slate</strong> patterns. For contemporary Bedford homes, we recommend smoother textures like <strong>Italian slate</strong> or <strong>travertine</strong>. We bring samples to your home for a perfect match."},
        @{Q="Can you match existing stone or pavers on my Bedford property?";A="Absolutely. Many Bedford estates have existing stone features. We can match and complement existing stonework, pavers, or architectural elements using custom color blends and carefully selected patterns. We've done this successfully for dozens of Bedford homeowners."},
        @{Q="What's the best season for a concrete project in Bedford?";A="Our season runs <strong>late April through mid-October</strong>. Bedford's location and terrain allow for a full season of installations. We recommend booking spring or fall for larger projects, as temperatures are ideal for curing and our schedules are more flexible."},
        @{Q="Do you work on commercial properties in Bedford?";A="Yes. We've completed stamped concrete projects for Bedford businesses along the Route 101 corridor, including restaurant patios, retail walkways, and office building entryways. The same premium quality we bring to residential projects applies to every commercial installation."}
    )
    Community=@("Support <strong>Bedford Old Town Day</strong> celebrations and community events","Contribute to <strong>Bedford Land Trust</strong> conservation and trail projects","Sponsor youth programs through <strong>Bedford Parks & Recreation</strong>","Provide consultations for <strong>Bedford Historical Society</strong> restoration work")
    Directions=@{From="From Bedford Town Hall (24 North Amherst Road)";Steps=@("Head east on North Amherst Road toward Route 101","Merge onto Route 101 East briefly","Take the ramp onto I-293 North toward Concord","Continue on I-293 as it becomes I-93 North","Take Exit 12S for Chenell Drive","Turn right onto Chenell Drive — our building is on the right")}
    Landmarks=@(
        @{Icon="landmark";Name="Bedford Village Common";Desc="Historic town center near many of our premium residential projects"},
        @{Icon="mountain";Name="Liberty Hill";Desc="Prestigious hilltop neighborhood featuring several of our estate-scale installations"},
        @{Icon="mountain";Name="Joppa Hill";Desc="Scenic area with panoramic views and luxury homes we've enhanced"},
        @{Icon="store";Name="Route 101 Business District";Desc="Bedford's commercial corridor where we've completed retail and restaurant projects"},
        @{Icon="tree";Name="Pulpit Rock Conservation Area";Desc="Natural area near several Bedford neighborhoods we serve"}
    )
}
)

foreach ($t in $towns) {
    $html = Generate-TownPage -D $t
    $fileName = "StampedConcrete$($t.FileKey).html"
    [System.IO.File]::WriteAllText((Join-Path $PSScriptRoot $fileName), $html)
    Write-Host "Created: $fileName"
}
Write-Host "`nBatch 1 complete! (Amherst, Atkinson, Auburn, Bedford)"
