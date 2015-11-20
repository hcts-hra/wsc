xquery version "3.0";
declare namespace tei="http://www.tei-c.org/ns/1.0";


let $data := collection('/db/apps/MCST/data/test/biodb/')
for $hits in $data//tei:persName[range:eq(., "奧斯彭")]
return <results>{$hits}</results>