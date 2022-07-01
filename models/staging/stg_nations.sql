select 
    cast(t.$1 as number(3, 0)) NATIONKEY, 
    trim(t.$2) NAME, 
    cast(t.$3 as number(1,0)) REGIONKEY, 
    trim(t.$4) COMMENT
from {{ source('int_stg', 'nations') }}
--@public.int_stg/h_nation.dsv.gz
--(file_format => public.dsv) t
;