select 
    cast(t.$1 as number(6, 0)) SUPPKEY, 
    cast(trim(t.$2) as varchar(50)) NAME, 
    cast(trim(t.$3) as varchar(150)) ADDRESS,
    cast(t.$4 as number(3, 0)) NATIONKEY, 
    cast(trim(t.$5) as varchar(20)) PHONE,
    cast(REPLACE(t.$6, ',', '.') as number(10, 2)) ACCTBAL,
    cast(trim(t.$7) as varchar(150)) COMMENT
from @public.int_stg/h_supplier.dsv.gz
(file_format => public.dsv) t