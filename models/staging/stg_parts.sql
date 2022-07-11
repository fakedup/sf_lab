select 
    cast(t.$1 as number(8, 0)) PARTKEY, 
    cast(trim(t.$2) as varchar(50)) NAME, 
    cast(trim(t.$3) as varchar(50)) MFGR,
    cast(trim(t.$4) as varchar(50)) BRAND,
    cast(trim(t.$5) as varchar(50)) TYPE,
    cast(t.$6 as number(4, 0)) SIZE,
    cast(trim(t.$7) as varchar(50)) CONTAINER,
    cast(REPLACE(t.$8, ',', '.') as number(10, 2)) RETAILPRICE,
    cast(trim(t.$9) as varchar(150)) COMMENT
from @public.int_stg/h_part.dsv.gz
(file_format => public.dsv) t