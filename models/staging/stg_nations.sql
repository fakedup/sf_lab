select 
    cast(t.$1 as number(3, 0)) NATIONKEY, 
    cast(trim(t.$2) as varchar(50)) NAME, 
    cast(t.$3 as number(1,0)) REGIONKEY, 
    cast(trim(t.$4) as varchar(150)) COMMENT
from @public.int_stg/h_nation.dsv.gz
(file_format => public.dsv) t