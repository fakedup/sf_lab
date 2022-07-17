select
    p.PARTKEY,
    p.NAME PART,
    p.MFGR,
    p.BRAND,
    p.TYPE,
    p.SIZE,
    p.CONTAINER
from {{ ref('stg_parts') }} p