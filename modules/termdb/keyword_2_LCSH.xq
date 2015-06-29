xquery version "3.0";
declare namespace tei="http://www.tei-c.org/ns/1.0";
declare default element namespace "http://www.tei-c.org/ns/1.0";

declare variable $terms := collection('/db/apps/wsc-data/termdb/');

(:  These three function change tei:usg fields from the FM keywords to LCSH :)
(:  For testing purposes
    let $test:= doc('/db/apps/wsc-data/entry_sample.xml')
    
    both local:dom and local:hint need to be called separately:)

declare function local:id_transform($nodes as node()*) as item()* {
(:  This is a helper function for switching the gloss strings into lcsh id strings to be called from within local:dom    :)
    for $n in $nodes
    return
        switch (normalize-space($n))
        case "Acoustics"  return "sh85125363"
        case "Aeronomy"  return "sh85009275"
        case "Aesthetics"  return "sh85001441"
        case "Agriculture"  return "sh85002415"
        case "Agriculture and Food Production"  return "sh85002415"
        case "Air Transportation"  return "sh85001360"
        case "Aircraft"  return "sh85049596"
        case "Airforce"   return "sh85002638"
        case "Algebra"   return "sh85003425"
        case "Analysis"  return "sh85004780"
        case "Analytical Chemistry"   return "sh85023011"
        case "Anatomy"  return "sh85004835"
        case "Anthropology" case "anthropology"  return "sh85005581"
        case "Applied Geography"  return "sh89006425"
        case "Applied Logic"  case "Applied logic" return "sh85111790"
        case "Archaelogy" case "Archaeology"  return "sh85006507"
        case "Architecture, Urban Design"  return "sh85026282"
        case "Argarwissenschaft"  return "sh91006254"
        case "Army"  return "sh85007241"
        case "Arts"  return "sh85008324"
        case "Astrogeology"  return "sh88000316"
        case "Astronomy"  return "sh85009003"
        case "Atmospheric Sciences"  return "sh85009289"
        case "Ausbildung"  return "sh85093855"
        case "Ballistics"  return "sh85011312"
        case "Basic Engineering Services"  return "sh85120347"
        case "Basic Social Services"  return "sh85124049"
        case "Beverage Production"  return "sh85013498"
        case "Bibliography"  return "sh85013838"
        case "Biochemistry"  return "sh85014171"
        case "Biography"  return "sh85014152"
        case "Biological Sciences"  return "sh85014203"
        case "Biology"  return "sh85014203"
        case "Botany"  return "sh85015976"
        case "Calender"  return "sh85018823"
        case "Cell Biology"  return "sh85035240"
        case "Chemistry"  return "sh85022986"
        case "Chinese Studies"  return "sh85024195"
        case "Chronology"  return "sh85025406"
        case "Civil Engineering Works"  return "sh85026331"
        case "Civil Procedural Law"  return "sh85026353"
        case "Climatology"  return "sh85027044"
        case "Combinatorics and Number Theory"  return "sh85003425"
        case "Communication and Information Theory"  return "sh85066289"
        case "Comparatistics"  return "sh85034273"
        case "Constitutional Law"  return "sh85031329"
        case "Construction Industries"  return "sh85031360"
        case "Construction Technology"  return "sh97005373"
        case "Criminal Law"  return "sh85034058"
        case "Crop Farming" case "Crop farming" return "sh91006254"
        case "Cultural Anthropology"  return "sh85045198"
        case "Culture"  return "sh85036316"
        case "Daily Life"  return "sh85076844"
        case "Dance"  return "sh85035659"
        case "Decoration, Functional Design" return "sh85036316"
        case "Defensive Weaponry"  return "sh85007341"
        case "Demography" return "sh85036659"
        case "Dentistry"  return "sh85036953"
        case "Diplomacy"  return "sh85038179"
        case "Documents"  return "sh85075742"
        case "Drawing, Painting, Printmaking, Photography"  return "sh85007461"
        case "Earth Sciences"  return "sh85040468"
        case "Economic Geology" return "sh85054085"
        case "Economic History"  return "sh85040817"
        case "Economic Law"  return "sh95010239"
        case "Economic Systems"  return "sh85079443"
        case "Economic Theory"  return "sh85040850"
        case "Economics" case "Economy" return "sh85040850"
        case "Education"  return "sh85040989"
        case "Electricity"  return "sh85042065"
        case "Electronic Components and Techniques" return "sh85042383"
        case "Encyclopedia"  return "sh85042997"
        case "Endocrinology"  return "sh85043068"
        case "Engineering"  return "sh85043176"
        case "Engineering Geology"  return "sh85043221"
        case "Environmental Geology"  return "sh90002376"
        case "Epistemology"  return "sh85072732"
        case "Ethics"  return "sh85045096"
        case "Eugenics"  return "sh85045538"
        case "Explosives"  return "sh85046474"
        case "Family Law"  return "sh85038927"
        case "Farm Management"  return "sh85047223"
        case "Food Preservation"  return "sh85050212"       
        case "Food Sources and New Product Development" case "Food Processing" return "sh85050282"
        case "Formal Logic"  return "sh85050793"
        case "Genealogy"  return "sh85053742"
        case "General Building Construction"  return "sh85017693"
        case "Geodesy"  return "sh85053969"
        case "Geography"  return "sh85053986"
        case "Geological Sciences"  return "sh85040468"
        case "Geometry"  return "sh85054133"
        case "Geomorphology"  return "sh85054165"
        case "Geophysics"  return "sh85054185"
        case "Glacial Geology"  return "sh85055077"
        case "Glaciology"  return "sh85055077"
        case "Government Finance"  return "sh85048270"
        case "Gunpowder Weapons"  return "sh85057937"
        case "Heat"  return "sh85059758"
        case "Heraldry"  return "sh85060322"
        case "Historical Anthropology"  return "sh88002742"
        case "Historical Events"  return "sh88001278"
        case "Historical Geography"  return "sh85054019"
        case "Historical Geology" return "sh85061190" 
        case "Historical Linguistics"  return "sh85061192"
        case "Historiography"  return "sh85061211"
        case "History"  return "sh85061212"
        case "History of Art"  return "sh85007488"
        case "History of Science"  return "sh85118615"
        case "History of Technology"  return "sh2009102782"
        case "Housework"  return "sh97003594"
        case "Human Geography"  return "sh85005570"
        case "Humanities"  return "sh85062913"
        case "Hydrologic Sciences"  return "sh85006246"
        case "Hydrology"  return "sh85063458"
        case "Hygiene"  case "Hygienics" return "sh85063519"
        case "Immunology"  return "sh85064579"
        case "Industrial Chemistry"  return "sh85023029"
        case "Industrial Research and Development"  return "sh85113031"
        case "Industrial Safety"  return "sh85065936"
        case "Industry"  return "sh85065960"
        case "Information Processing and Communication"  return "sh85133270"
        case "Information Processing and Systems"  return "sh98003200"
        case "Information Recording Devices"  return "sh85066163"
        case "Inorganic Chemistry"  return "sh85023017"
        case "Intellectual History"  return "sh85067164"
        case "Intelligence"  return "sh85067173"
        case "International Law"  return "sh85067417"
        case "International Relations"  return "sh85067435"
        case "International Trade"  return "sh87004890"
        case "Japan Civilization"  return "sh85069361"
        case "Japan Civilization Western Influences"  return "sh85069390"
        case "Japan Relations Europe"  return "sh2008115657"
        case "Japanese National Characteristics"  return "sh85089983"
        case "Journalism and Media"  return "sh85070736"
        case "Judical Procedure" case "Judicial Procedure"  return "sh85107127"
        case "Knowledge"  return "sh85072732"
        case "Labour Movement"  return "sh89000876"
        case "Law"  return "sh85075119"
        case "Law of Torts"  return "sh85136182"
        case "Library Science"  return "sh85076723"
        case "Life Support Systems for Exploration"  return "sh85062867"
        case "Limnology"  return "sh85077053"
        case "Linguistic Anthropology"  return "sh85005577"
        case "Linguistic Geography"  return "sh85077216"
        case "Linguistics"  return "sh85077222"
        case "Literary Criticism"  return "sh85034149"
        case "Literature"  return "sh85077507"
        case "Livestock Farming" case "Livestock farming" return "sh85077784"
        case "Logic"  return "sh85078106"
        case "Logistics"  return "sh85078128"
        case "Macroeconomics"  return "sh85079443"
        case "Magnetism"  return "sh85079759"
        case "Major Fabrication Industries" case "Major Manufacturing Industries" return "sh97001369"
        case "Major Process Industries"  return "sh85080664"
        case "Material Culture"  return "sh85082061"
        case "Mathematical and Statistical Linguistics"  return "sh85082122"
        case "Mathematics"  return "sh85082139"
        case "Mechanics"  return "sh85082767"
        case "Medical Jurisprudence"  return "sh85082955"
        case "Medicine"  return "sh85083064"
        case "Merchandising and Marketing"  return "sh85081333"
        case "Metalogic"  return "sh85078115"
        case "Metaphysics"  return "sh85084286"
        case "Meteoritics"  return "sh85084363"
        case "Meteorology" case "Meterology" return "sh85084334"
        case "Microeconomics"  return "sh85084819"
        case "Military" case "Military "  return "sh85085132"
        case "Military History"  return "sh00005863"
        case "Military Technology"  return "sh85085132"
        case "Mineralogy"  return "sh85085589"
        case "Mining"  return "sh85085712"
        case "Missionary History"  return "sh85086042"
        case "Molecular Biology"  return "sh85086577"
        case "Motion Pictures"  return "sh85088084"
        case "Music"  return "sh85088762"
        case "Musicology"  return "sh85089048"
        case "Natural Science"  return "sh85118553"
        case "Navigation"  return "sh85090425"
        case "Navy"   return "sh85090422"
        case "Neologisms"  return "sh85148117"
        case "Neurology"  return "sh85091139"
        case "News (Domestic)"  return "sh85106500"
        case "News (World)"  return "sh85050511"
        case "Nuclear and Atomic Physics"  return "sh85093024"
        case "Obstetrics and Gynecology"  return "sh85147301"
        case "Occupational Medicine"  return "sh85083146"
        case "Oceanography"  return "sh85093937"
        case "Offensive Weaponry"  return "sh85007341"
        case "Office machines"  return "sh85094180"
        case "Ophtamology"  return "sh85095071"
        case "Optics"  return "sh85095181"
        case "Organic Chemistry"  return "sh85023022"
        case "Organismic Biology"  return "sh2003007697"
        case "Organization of Education"  return "sh85041091"
        case "Overseas Chinese"  return "sh2005002341"
        case "Paleography"  return "sh85097064"
        case "Paleontology"  return "sh85097123"
        case "Pathology"  return "sh85098685"
        case "Pedagogy"  return "sh85040989"
        case "Petrology"  return "sh85100472"
        case "Pharmacy"  return "sh85100603"
        case "Philosophical Anthropology"  return "sh85100845"
        case "Philosophical Psychology"  return "sh86006204"
        case "Philosophy"  return "sh85100849"
        case "Philosophy of Art"  return "sh85007494"
        case "Philosophy of Education"  return "sh85041014"
        case "Philosophy of History"  return "sh85061223"
        case "Philosophy of Language"  return "sh85074574"
        case "Philosophy of Law"  return "sh85075139"
        case "Philosophy of Logic"  return "sh85078106"
        case "Philosophy of Mathematics"  return "sh85082153"
        case "Philosophy of Nature"  return "sh85101004"
        case "Philosophy of Religion"  return "sh85112554"
        case "Philosophy of Science"  return "sh85118582"
        case "Photography"  return "sh85101206"
        case "Physical Anthropology"  return "sh85101512"
        case "Physical Chemistry"  return "sh85023027"
        case "Physical Geography"  return "sh85101552"
        case "Physical Sciences"  return "sh89005705"
        case "Physics"  return "sh85101653"
        case "Physiological Psychology"  return "sh85108484"
        case "Physiology"  return "sh85101679"
        case "Planetary and Lunar Sciences"  return "sh85102652"
        case "Political History"  return "sh85148216"
        case "Political Philosophy"  return "sh88004669"
        case "Political Sciences" case "Political Systems" return "sh85104440"
        case "Politics"  return "sh2002011436"
        case "Polymer"  return "sh85104660"
        case "Population Biology"  return "sh85104917"
        case "Population History"  return "sh85104911"
        case "Prefabrication and Shop Fabrication"  return "sh85080664"
        case "Press"  return "sh85106500"
        case "Principles of Work and Production"  return "sh90004091"
        case "Private Law"  return "sh85026344"
        case "Property Law"  return "sh85107496"
        case "Psychiatry"  return "sh85108381"
        case "Psycholinguistics"  return "sh85108432"
        case "Psychology"  return "sh85108459"
        case "Public Administration"  return "sh85108611"
        case "Public Health"  return "sh85108638"
        case "Public Law"  return "sh85108696"
        case "Public Opinion"  return "sh85108736"
        case "Public Welfare Law"  return "sh85108846"
        case "Quantum Mechanics"  return "sh85109469"
        case "Radiology"  return "sh85110774"
        case "Rail Technology"  return "sh85110904"
        case "Rail Transportation" case "Rail transportation" return "sh85110904"
        case "Regional Geography"  return "sh85077922"
        case "Religion"  return "sh85112549"
        case "Religious Life and Institutions"  return "sh85112589"
        case "Remote Sensing"  return "sh85112798"
        case "Research Methods"  return "sh85084414"
        case "Revolution"  return "sh85113507"
        case "Roads and Highways"  return "sh85114487"
        case "Science"  return "sh85118553"
        case "Sciences in general"  return "sh85118553"
        case "Sculpture"  return "sh85119004"
        case "Sectoral Economics"  return "sh2010012970"
        case "Semantics"  return "sh85119870"
        case "Service Industries"  return "sh85120347"
        case "Set Theory"  return "sh85120387"
        case "Social Life"  return "sh85080593"
        case "Social Psychology"  return "sh85123994"
        case "Social Science"  return "sh85124003"
        case "Social Sciences"  return "sh85124003"
        case "Sociolinguistics"  return "sh85124195"
        case "Sociology"  return "sh85124200"
        case "Sound"  return "sh85125363"
        case "Sound Recording Devices"  return "sh85125391"
        case "Sports Science"  return "sh86000064"
        case "States of Matters"  return "sh85082246"
        case "Stationery Conveyance Systems" return "sh85031748"
        case "Statistics"  return "sh85127580"
        case "Strategy"  return "sh85128514"
        case "Stratigraphy"  return "sh88001988"
        case "Structural Geology, Volcanology"  return "sh85054117"
        case "Study of Comets and Minor Planets"  return "sh85009003"
        case "Stylistics"  return "sh85074540"
        case "Surface and Underground Exploration"  return "sh85038366"
        case "Surgery"  return "sh85130766"
        case "Systems of Communication"  return "sh85133270"
        case "Tactics"  return "sh85131869"
        case "Taxation Law"  return "sh85132846"
        case "Technology" case "Technology " return "sh85133147"
        case "Technology of Earth and Space Exploration"  return "sh85102659"
        case "Technology of Hunting and Fishing" return "sh95007661"
        case "Technology of the Major Industries"  return "sh85079362"
        case "Technology of the Urban Community"  return "sh85026255"
        case "Terminological Standardisation" case "Terminological Standardization" return "sh85127309"
        case "Terminology"  return "sh85134029"
        case "Textual Criticism"  return "sh85034152"
        case "Theatre"  return "sh85134522"
        case "Theory"  return "sh85134713"
        case "Thermodynamics"  return "sh85134783"
        case "Toxicology"  return "sh85136331"
        case "Trade"  return "sh85028901"
        case "Traffic Control"  return "sh85136773"
        case "Translation" case "Translations" return "sh85136958"
        case "Transportation" case "Transportation Technology" return "sh85137027"         
        case "Travelogues"  return "sh90003630"
        case "Undersea Exploration"  return "sh85139619"
        case "Understanding of Religion"  return "sh85112735"
        case "Urology"  return "sh85141451"
        case "Utilities Industries"  return "sh85108825"
        case "Vehicles for Transport on Roads and Highways" 
        case "War"  return "sh85145114"
        case "Water Transportation" case "Water transportation" return "sh85121579"
        case "Weapon Platforms"  return "sh85007341"
        case "Women’s Movement"  return "sh85047741"
        case "Zoology"  return "sh85149983"
        default return (normalize-space($n/text()))
};

declare function local:dom($nodes as node()*) as node()* {
(:    This function permanently changes tei:usg[@dom] nodes to the desired output    :)
(:      INPUT
            <usg type="dom">
                <gloss target="PS1">Physical Sciences
                    <gloss target="PS2">Physics</gloss>
                </gloss>
                <gloss target="PS1">Physical Sciences
                    <gloss target="PS2">Chemistry</gloss>
                </gloss>
            </usg>
            
        OUTPUT
            <usg type="dom">
                <gloss target="#LCSH #sh89005705 #sh85101653"/>
                <gloss target="#LCSH #sh89005705 #sh85022986"/>
            </usg>    :)
    let $nodes := $terms//tei:usg[@type ="dom"]
for $n in $nodes//tei:gloss[@target="PS1"]
return
    update replace $n with
            <gloss target="#LCSH {concat('#', local:id_transform($n/text()), 
                   (if (exists($n/tei:gloss)) 
                    then (attribute target {concat(' #', local:id_transform($n/tei:gloss/text()))})
                    else ()), 
                   (if (exists($n/tei:gloss/tei:gloss)) 
                    then (attribute target {concat(' #', local:id_transform($n/tei:gloss/tei:gloss/text()))})
                    else ()))}"/>

};

declare function local:hint($nodes as node()*) as node()* {
(:    This function permanently changes tei:usg[@hint] nodes to the desired output    :)


(: INPUT 
        <usg type="hint">
            <gloss target="H1">部定</gloss>
        </usg>
        
    OUTPUT
    <usg type="hint"> 
        <gloss target="#USE #app"/>
    </usg>:)
    
    
    let $nodes := $terms//tei:usg[@type="hint"]
for $n in $nodes//tei:gloss
return 
    if ($n[@target="H1"]) then (update replace $n with <gloss target="#USE #app"/>)
    else (
        if ($n[@target="H2"]) then (update replace $n with <gloss target="#USE #col"/>)
        else (
        if ($n[@target="H3"]) then (update replace $n with <gloss target="#USE #out"/>) 
        else (
            if ($n[@target="H4"]) then (update replace $n with <gloss target="#USE #new"/>)
            else($n))))
};

let $test := $terms

return local:dom($test)