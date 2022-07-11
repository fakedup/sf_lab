select 
    cast(t.$1 as number(30, 0)) ORDERKEY, 
    cast(t.$2 as number(6, 0)) CUSTKEY, 
    cast(trim(t.$3) as varchar(1)) ORDERSTATUS,
    cast(REPLACE(t.$4, ',', '.') as number(20, 2)) TOTALPRICE,
    TO_DATE(t.$5, 'DD.MM.YY') ORDERDATE,
    cast(trim(t.$6) as varchar(20)) ORDERPRIORITY,
    cast(trim(t.$7) as varchar(20)) CLERK,
    cast(t.$8 as number(1, 0)) SHIPPRIORITY, 
    cast(trim(t.$9) as varchar(150)) COMMENT
from @public.int_stg/h_order.dsv.gz
(file_format => public.dsv) t