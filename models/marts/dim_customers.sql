select 
 c.CUSTKEY,
 c.NAME CUSTOMER,
 c.MKTSEGMENT,
 n.NAME NATION,
 r.NAME REGION
from {{ ref('stg_customers')}} c
left join {{ ref('stg_nations') }} n on c.NATIONKEY = n.NATIONKEY
left join {{ ref('stg_regions') }} r on n.REGIONKEY = r.REGIONKEY