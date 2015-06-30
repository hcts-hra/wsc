xquery version "3.0";
declare namespace mods="http://www.loc.gov/mods/v3";

let $bibdb := collection('/db/apps/wsc-data/bibdb/')//mods:mods

return
    <git47>
        <total>{count(/$bibdb//mods:location/mods:url[@displayLabel="Online edition"])}</total>
        <contents>{/$bibdb//mods:url[@displayLabel="Online edition"]/text()}</contents>
        <list>
            {for $n in $bibdb//mods:location/mods:url[@displayLabel="Online edition"]
            return
                <id>{$n/../../mods:identifier/text()}</id>
            }
        </list>    
    </git47>