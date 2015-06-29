xquery version "3.0";

declare namespace mods="http://www.loc.gov/mods/v3";
declare default element namespace "http://www.loc.gov/mods/v3";

let $seri := collection('/db/apps/wsc-data/bibdb/serials/')

(:the below only works because only serials are missing id, and all serials FM bibid here start with Z
PS I hate string operations in xpath:)

for $n in $seri//mods:recordOrigin

return update insert
    <identifier type="wsc">{normalize-space(substring($n, string-length('exported from WSC FileMaker database, SerieDB LfdNr '), string-length(substring-before($n, ', last')) - string-length(substring-before($n, ' Z'))))}</identifier>
    following $n/../../mods:recordInfo 