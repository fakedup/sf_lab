select 
    cast(t.$1 as number(8, 0)) PARTKEY, 
    cast(t.$2 as number(6, 0)) SUPPKEY, 
    cast(t.$3 as number(10, 0)) AVAILQTY, 
    cast(REPLACE(t.$4, ',', '.') as number(10, 2)) SUPPLYCOST,
    cast(trim(t.$5) as varchar(150)) COMMENT
from @public.int_stg/h_partsupp.dsv.gz
(file_format => public.dsv) t