declare namespace mods="http://www.loc.gov/mods/v3";

let $mono := collection('/db/apps/wsc-data/bibdb/monographs/')
let $seri := collection('/db/apps/wsc-data/bibdb/serials/')


(:Check the total number of records and then by collection. Subtract the ones that have an identifier element within each collection.
If there are records without the identifier elements, return a list of their IDs:)       
        
        
return  
        <summary>
            <total>{count($mono//mods:mods) + count($seri//mods:mods)}</total>
            <mono>{count($mono//mods:mods)}
                <missing>{count($mono//mods:mods) - count($mono//mods:identifier[@type="wsc"])}</missing>
                <list>
                    {for $n in $mono//mods:mods
                    return 
                        if (empty($n/mods:identifier[@type="wsc"]))
                        then (<empty>{data($n/@ID)}</empty>)
                        else()}
                </list>
            </mono>
            <seri>{count($seri//mods:mods)}
                <missing>{count($seri//mods:mods) - count($seri//mods:identifier[@type="wsc"])}</missing>
                <list>
                    {for $y in $seri//mods:mods
                    return
                    if (empty($y/mods:identifier[@type="wsc"]))
                    then (<empty>{data($y/@ID)}</empty>)
                    else()}
                </list>
            </seri>
        </summary>    



