select 
    cast(t.$1 as number(1, 0)) REGIONKEY, 
    cast(trim(t.$2) as varchar(50)) NAME, 
    cast(trim(t.$3) as varchar(150)) COMMENT
from @public.int_stg/h_region.csv.gz
(file_format => public.csv) t