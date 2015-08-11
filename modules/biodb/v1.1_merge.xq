xquery version "3.0";
declare namespace tei="http://www.tei-c.org/ns/1.0";

declare variable $bio := doc('file:/Users/halalpha/Documents/gits/wsc-data/WSC/biodb/wsc_persons.xml');

(:First, replace tei:notes elements in the new file with the ones from the 1.0 file:)
(:Second, delete all empty elements in the new file:)
(:THird, replace all listBibl elements of the 1.0 file with the new ones:)

(:Some bibl items still don't have idno
it might be better to not include full references here and just use links to mods files since alalc-97 is incorrect, use same fix as the one in termdb. 
make sure that <person>some UUID</person> is resolved properly
:)




