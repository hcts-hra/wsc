xquery version "3.0";

declare namespace mods="http://www.loc.gov/mods/v3";
declare default element namespace "http://www.loc.gov/mods/v3";

declare variable $bibdb := collection("/db/apps/wsc-data/bibdb/");

let $att :=
    <root>
        <row>
           <id>bib11</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib11.pdf</url>
           </location>
        </row>
        <row>
           <id>bib14</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib14.pdf</url>
           </location>
        </row>
        <row>
           <id>bib101</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib101.pdf</url>
           </location>
        </row>
        <row>
           <id>bib103</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib103/</url>
           </location>
        </row>
        <row>
           <id>z108</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.serials/z108/</url>
           </location>
        </row>
        <row>
           <id>z183</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.serials/z183.pdf</url>
           </location>
        </row>
        <row>
           <id>z542</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.serials/z542.pdf</url>
           </location>
        </row>
        <row>
           <id>z549</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.serials/z549/</url>
           </location>
        </row>
        <row>
           <id>z606</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.serials/z606/</url>
           </location>
        </row>
        <row>
           <id>bib724</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib724/</url>
           </location>
        </row>
        <row>
           <id>z778</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.serials/z778/</url>
           </location>
        </row>
        <row>
           <id>z853</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.serials/z853/</url>
           </location>
        </row>
        <row>
           <id>z871</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.serials/z871.pdf</url>
           </location>
        </row>
        <row>
           <id>bib876</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib876.pdf</url>
           </location>
        </row>
        <row>
           <id>z1000</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.serials/z1000.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1009</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1009.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1014</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1014/</url>
           </location>
        </row>
        <row>
           <id>bib1024</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1024.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1040</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1040.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1088</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1088.pdf</url>
           </location>
        </row>
        <row>
           <id>z1090</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.serials/z1090/</url>
           </location>
        </row>
        <row>
           <id>bib1113</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1113.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1142</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1142.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1157</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1157.pdf</url>
           </location>
        </row>
        <row>
           <id>z1163</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.serials/z1163/</url>
           </location>
        </row>
        <row>
           <id>z1213</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.serials/z1213/</url>
           </location>
        </row>
        <row>
           <id>z1215</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.serials/z1215/</url>
           </location>
        </row>
        <row>
           <id>bib1239</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1239.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1270</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1270.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1274</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1274/</url>
           </location>
        </row>
        <row>
           <id>bib1284</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1284/</url>
           </location>
        </row>
        <row>
           <id>z1328</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.serials/z1328/</url>
           </location>
        </row>
        <row>
           <id>z1329</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.serials/z1329/</url>
           </location>
        </row>
        <row>
           <id>z1334</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.serials/z1334.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1391</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1391.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1400</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1400/</url>
           </location>
        </row>
        <row>
           <id>bib1412</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1412.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1422</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1422/</url>
           </location>
        </row>
        <row>
           <id>bib1468</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1468/</url>
           </location>
        </row>
        <row>
           <id>bib1480</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1480.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1537</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1537.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1538</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1538.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1619</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1619.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1640</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1640.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1670</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1670/</url>
           </location>
        </row>
        <row>
           <id>bib1707</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1707.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1725</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1725/</url>
           </location>
        </row>
        <row>
           <id>bib1728</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1728/</url>
           </location>
        </row>
        <row>
           <id>bib1728</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1728.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1738</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1738.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1739</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1739/</url>
           </location>
        </row>
        <row>
           <id>bib1753</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1753/</url>
           </location>
        </row>
        <row>
           <id>bib1824</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1824.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1834</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1834.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1835</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1835.pdf</url>
           </location>
        </row>
        <row>
           <id>bib1969</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib1969.pdf</url>
           </location>
        </row>
        <row>
           <id>bib2080</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib2080.pdf</url>
           </location>
        </row>
        <row>
           <id>bib2327</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib2327.pdf</url>
           </location>
        </row>
        <row>
           <id>bib2328</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib2328.pdf</url>
           </location>
        </row>
        <row>
           <id>bib2372</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib2372.pdf</url>
           </location>
        </row>
        <row>
           <id>bib2416</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib2416.pdf</url>
           </location>
        </row>
        <row>
           <id>bib2521</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib2521.pdf</url>
           </location>
        </row>
        (:<row>
           <id>bib2648</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib2648.pdf</url>
           </location>
        </row>:)
        <row>
           <id>bib2695</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib2695.pdf</url>
           </location>
        </row>
        <row>
           <id>bib2807</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib2807.pdf</url>
           </location>
        </row>
        <row>
           <id>bib2871</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib2871.pdf</url>
           </location>
        </row>
        (:<row>
           <id>bib2894</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib2894.pdf</url>
           </location>
        </row>:)
        <row>
           <id>bib2903</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib2903.pdf</url>
           </location>
        </row>
        <row>
           <id>bib2935</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib2935/</url>
           </location>
        </row>
        <row>
           <id>bib3030</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib3030.pdf</url>
           </location>
        </row>
        <row>
           <id>bib3281</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib3281/</url>
           </location>
        </row>
        <row>
           <id>bib3293</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib3293.pdf</url>
           </location>
        </row>
       (: <row>
           <id>bib3317</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib3317.pdf</url>
           </location>
        </row>:)
        <row>
           <id>bib3414</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib3414.pdf</url>
           </location>
        </row>
        <row>
           <id>bib3428</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib3428/</url>
           </location>
        </row>
        <row>
           <id>bib3474</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib3474.pdf</url>
           </location>
        </row>
        <row>
           <id>bib3477</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib3477.pdf</url>
           </location>
        </row>
        <row>
           <id>bib3482</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib3482.pdf</url>
           </location>
        </row>
        <row>
           <id>bib3484</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib3484.pdf</url>
           </location>
        </row>
        <row>
           <id>bib3513</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib3513.pdf</url>
           </location>
        </row>
        <row>
           <id>bib3806</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib3806/</url>
           </location>
        </row>
        <row>
           <id>bib3853</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib3853.pdf</url>
           </location>
        </row>
        <row>
           <id>bib4431</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib4431.pdf</url>
           </location>
        </row>
        <row>
           <id>bib4483</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib4483.pdf</url>
           </location>
        </row>
        <row>
           <id>bib4610</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib4610/</url>
           </location>
        </row>
        <row>
           <id>bib4712</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib4712.pdf</url>
           </location>
        </row>
        <row>
           <id>bib4717</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib4717.pdf</url>
           </location>
        </row>
        <row>
           <id>bib5156</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib5156.pdf</url>
           </location>
        </row>
        <row>
           <id>bib5204</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib5204.pdf</url>
           </location>
        </row>
        <row>
           <id>bib5227</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib5227.pdf</url>
           </location>
        </row>
        <row>
           <id>bib5451</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib5451/</url>
           </location>
        </row>
        <row>
           <id>bib5702</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib5702/</url>
           </location>
        </row>
        <row>
           <id>bib5724</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib5724/</url>
           </location>
        </row>
        <row>
           <id>bib5726</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib5726.pdf</url>
           </location>
        </row>
        <row>
           <id>bib5728</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib5728/</url>
           </location>
        </row>
        <row>
           <id>bib5732</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib5732.pdf</url>
           </location>
        </row>
        <row>
           <id>bib5737</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib5737.pdf</url>
           </location>
        </row>
        <row>
           <id>bib6083</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6083.pdf</url>
           </location>
        </row>
        <row>
           <id>bib6212</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6212/</url>
           </location>
        </row>
        <row>
           <id>bib6234</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6234.pdf</url>
           </location>
        </row>
        <row>
           <id>bib6335</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6335.pdf</url>
           </location>
        </row>
        <row>
           <id>bib6340</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6340.pdf</url>
           </location>
        </row>
        <row>
           <id>bib6349</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6349.pdf</url>
           </location>
        </row>
        <row>
           <id>bib6353</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6353.pdf</url>
           </location>
        </row>
        <row>
           <id>bib6358</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6358/</url>
           </location>
        </row>
        (:<row>
           <id>bib6387</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6387/</url>
           </location>
        </row>
        <row>
           <id>bib6393</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6393/</url>
           </location>
        </row>:)
        <row>
           <id>bib6394</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6394.pdf</url>
           </location>
        </row>
        <row>
           <id>bib6401</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6401/</url>
           </location>
        </row>
        <row>
           <id>bib6407</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6407.pdf</url>
           </location>
        </row>
        <row>
           <id>bib6412</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6412/</url>
           </location>
        </row>
        <row>
           <id>bib6415</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6415/</url>
           </location>
        </row>
        <row>
           <id>bib6416</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6416/</url>
           </location>
        </row>
        <row>
           <id>bib6417</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6417/</url>
           </location>
        </row>
        <row>
           <id>bib6464</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6464.pdf</url>
           </location>
        </row>
        <row>
           <id>bib6466</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6466.pdf</url>
           </location>
        </row>
        <row>
           <id>bib6472</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6472.pdf</url>
           </location>
        </row>
        <row>
           <id>bib6546</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6546/</url>
           </location>
        </row>
        <row>
           <id>bib6555</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6555/</url>
           </location>
        </row>
        <row>
           <id>bib6581</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6581.pdf</url>
           </location>
        </row>
        <row>
           <id>bib6676</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6676.pdf</url>
           </location>
        </row>
        <row>
           <id>bib6702</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6702.pdf</url>
           </location>
        </row>
        <row>
           <id>bib6705</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6705.pdf</url>
           </location>
        </row>
        <row>
           <id>bib6944</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6944.pdf</url>
           </location>
        </row>
        <row>
           <id>bib6961</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib6961.pdf</url>
           </location>
        </row>
        <row>
           <id>bib7572</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib7572.pdf</url>
           </location>
        </row>
        <row>
           <id>bib7598</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib7598.pdf</url>
           </location>
        </row>
        <row>
           <id>bib7602</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib7602/</url>
           </location>
        </row>
        <row>
           <id>bib7785</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib7785.pdf</url>
           </location>
        </row>
        <row>
           <id>bib8016</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8016.pdf</url>
           </location>
        </row>
       (: <row>
           <id>bib8038</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8038/</url>
           </location>
        </row>:)
        <row>
           <id>bib8125</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8125.pdf</url>
           </location>
        </row>
       (: <row>
           <id>bib8126</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8126.pdf</url>
           </location>
        </row>:)
        <row>
           <id>bib8196</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8196.pdf</url>
           </location>
        </row>
        (:<row>
           <id>bib8260</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8260.pdf</url>
           </location>
        </row>:)
        <row>
           <id>bib8349</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8349.pdf</url>
           </location>
        </row>
        <row>
           <id>bib8352</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8352.pdf</url>
           </location>
        </row>
        (:<row>
           <id>bib8362</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8362.pdf</url>
           </location>
        </row>:)
        <row>
           <id>bib8364</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8364.pdf</url>
           </location>
        </row>
        <row>
           <id>bib8365</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8365.pdf</url>
           </location>
        </row>
        <row>
           <id>bib8366</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8366.pdf</url>
           </location>
        </row>
        <row>
           <id>bib8367</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8367.pdf</url>
           </location>
        </row>
        <row>
           <id>bib8372</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8372.pdf</url>
           </location>
        </row>
        <row>
           <id>bib8374</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8374.pdf</url>
           </location>
        </row>
        <row>
           <id>bib8478</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8478/</url>
           </location>
        </row>
        <row>
           <id>bib8547</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8547.pdf</url>
           </location>
        </row>
        (:<row>
           <id>bib8743</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8743.pdf</url>
           </location>
        </row>:)
        (:<row>
           <id>bib8753</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8753.pdf</url>
           </location>
        </row>:)
        <row>
           <id>bib8754</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8754/</url>
           </location>
        </row>
        (:<row>
           <id>bib8758</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8758.pdf</url>
           </location>
        </row>:)
        <row>
           <id>bib8827</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib8827.pdf</url>
           </location>
        </row>
        <row>
           <id>bib9514</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib9514/</url>
           </location>
        </row>
        <row>
           <id>bib9515</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib9515/</url>
           </location>
        </row>
        <row>
           <id>bib9709</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib9709/</url>
           </location>
        </row>
        <row>
           <id>bib9740</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib9740.pdf</url>
           </location>
        </row>
        <row>
           <id>bib9744</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib9744.pdf</url>
           </location>
        </row>
       (: <row>
           <id>bib9745</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib9745.pdf</url>
           </location>
        </row>:)
        <row>
           <id>bib9748</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib9748.pdf</url>
           </location>
        </row>
        <row>
           <id>bib9762</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib9762/</url>
           </location>
        </row>
        <row>
           <id>bib9976</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib9976/</url>
           </location>
        </row>
        <row>
           <id>bib10035</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10035.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10074</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10074.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10075</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10075.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10199</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10199.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10200</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10200.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10238</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10238.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10244</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10244.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10245</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10245/</url>
           </location>
        </row>
        <row>
           <id>bib10246</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10246.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10256</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10256/</url>
           </location>
        </row>
        <row>
           <id>bib10258</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10258.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10259</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10259.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10260</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10260/</url>
           </location>
        </row>
        <row>
           <id>bib10268</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10268.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10270</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10270.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10273</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10273.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10288</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10288.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10289</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10289.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10290</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10290.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10293</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10293.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10295</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10295/</url>
           </location>
        </row>
        <row>
           <id>bib10296</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10296/</url>
           </location>
        </row>
        <row>
           <id>bib10297</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10297.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10298</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10298.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10299</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10299.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10300</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10300.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10301</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10301.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10302</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10302/</url>
           </location>
        </row>
        <row>
           <id>bib10307</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10307.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10308</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10308.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10309</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10309.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10310</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10310.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10311</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10311.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10312</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10312/</url>
           </location>
        </row>
        <row>
           <id>bib10313</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10313.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10314</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10314.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10315</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10315.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10316</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10316.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10321</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10321.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10322</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10322.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10327</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10327/</url>
           </location>
        </row>
        <row>
           <id>bib10328</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10328.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10329</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10329/</url>
           </location>
        </row>
        <row>
           <id>bib10332</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10332.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10333</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10333/</url>
           </location>
        </row>
        <row>
           <id>bib10334</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10334/</url>
           </location>
        </row>
        <row>
           <id>bib10335</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10335.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10336</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10336.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10337</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10337.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10338</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10338.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10339</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10339.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10340</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10340/</url>
           </location>
        </row>
        <row>
           <id>bib10341</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10341/</url>
           </location>
        </row>
        <row>
           <id>bib10343</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10343.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10344</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10344/</url>
           </location>
        </row>
        <row>
           <id>bib10345</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10345/</url>
           </location>
        </row>
        <row>
           <id>bib10346</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10346/</url>
           </location>
        </row>
        <row>
           <id>bib10347</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10347.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10348</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10348.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10349</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10349/</url>
           </location>
        </row>
        <row>
           <id>bib10350</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10350.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10351</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10351/</url>
           </location>
        </row>
        <row>
           <id>bib10352</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10352.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10353</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10353/</url>
           </location>
        </row>
        <row>
           <id>bib10354</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10354/</url>
           </location>
        </row>
        <row>
           <id>bib10355</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10355.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10356</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10356/</url>
           </location>
        </row>
        <row>
           <id>bib10357</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10357/</url>
           </location>
        </row>
        <row>
           <id>bib10358</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10358.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10359</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10359/</url>
           </location>
        </row>
        <row>
           <id>bib10360</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10360/</url>
           </location>
        </row>
        <row>
           <id>bib10361</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10361/</url>
           </location>
        </row>
        <row>
           <id>bib10362</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10362.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10363</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10363/</url>
           </location>
        </row>
        <row>
           <id>bib10364</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10364/</url>
           </location>
        </row>
        <row>
           <id>bib10365</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10365.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10366</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10366/</url>
           </location>
        </row>
        <row>
           <id>bib10367</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10367/</url>
           </location>
        </row>
        <row>
           <id>bib10368</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10368.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10369</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10369.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10370</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10370.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10371</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10371.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10372</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10372/</url>
           </location>
        </row>
        <row>
           <id>bib10373</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10373/</url>
           </location>
        </row>
        <row>
           <id>bib10374</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10374.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10375</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10375.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10390</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10390.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10391</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10391.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10392</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10392.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10393</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10393.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10395</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10395.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10399</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10399.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10400</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10400.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10401</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10401.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10402</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10402.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10407</id>
        </row>
        <row>
           <id>bib10413</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10413.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10414</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10414.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10416</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10416.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10420</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10420.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10424</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10424.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10425</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10425.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10426</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10426.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10427</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10427.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10429</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10429.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10430</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10430.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10512</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10512.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10520</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10520/</url>
           </location>
        </row>
        <row>
           <id>bib10521</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10521.pdf</url>
           </location>
        </row>
        (:<row>
           <id>bib10527</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10527.pdf</url>
           </location>
        </row>:)
        <row>
           <id>bib10531</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10531.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10551</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10551.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10569</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10569.pdf</url>
           </location>
        </row>
        (:<row>
           <id>bib10586</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10586.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10628</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10628.pdf</url>
           </location>
        </row>
        <row>
           <id>bib10849</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10849/</url>
           </location>
        </row>
        <row>
           <id>bib10884</id>
           <location>
              <url access="raw object" displayLabel="link">http://kjc-sv013.kjc.uni-heidelberg.de/WSC_pdf/WSC.monographs/bib10884.pdf</url>
           </location>
        </row>:)
    </root>



(:There are 3447 records with a location elements and 165 with location/url
 this will add a new <location><url/><location> block to those records where we have pdf attachments 
  this query uses exist-db update syntax:)
  
(:fun fact: not all WSC mods records have an indentifier, sooooo we'll add it here for those that also need attachments   #48
rows which are inide comments point to missing FM records # 50:)
 

for $url in $att//id,
    $rec in $bibdb//mods:identifier[@type="wsc"]
where lower-case($rec/text()) eq $url/text()
return
    update insert $url/../location into $rec/../../mods:mods
    
    