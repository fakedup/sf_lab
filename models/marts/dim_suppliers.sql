select 
 s.SUPPKEY,
 s.NAME SUPPLIER,
 n.NAME NATION,
 r.NAME REGION
from {{ ref('stg_suppliers')}} s
left join {{ ref('stg_nations') }} n on s.NATIONKEY = n.NATIONKEY
left join {{ ref('stg_regions') }} r on n.REGIONKEY = r.REGIONKEY