select 
    cast(t.$1 as number(30, 0)) ORDERKEY, 
    cast(t.$2 as number(8, 0)) PARTKEY, 
    cast(t.$3 as number(8, 0)) SUPPKEY, 
    cast(t.$4 as number(4, 0)) LINENUMBER,
    cast(t.$5 as number(10, 0)) QUANTITY,
    cast(REPLACE(t.$6, ',', '.') as number(20, 2)) EXTENDEDPRICE,
    cast(REPLACE(t.$7, ',', '.') as number(4, 3)) DISCOUNT,
    cast(REPLACE(t.$8, ',', '.') as number(3, 2)) TAX,
    cast(trim(t.$9) as varchar(1)) RETURNFLAG,
    cast(trim(t.$10) as varchar(1)) LINESTATUS,
    TO_DATE(t.$11, 'DD.MM.YY') SHIPDATE,
    TO_DATE(t.$12, 'DD.MM.YY') COMMITDATE,
    TO_DATE(t.$13, 'DD.MM.YY') RECEIPTDATE,
    cast(trim(t.$14) as varchar(150)) SHIPINSTRUCT,
    cast(trim(t.$15) as varchar(50)) SHIPMODE,
    cast(trim(t.$16) as varchar(150)) COMMENT
from @public.int_stg/h_lineitem.dsv.gz
(file_format => public.dsv) t