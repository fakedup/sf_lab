select
 o.ORDERKEY,
 o.CUSTKEY,
 li.PARTKEY,
 li.SUPPKEY,
 li.QUANTITY,
 p.RETAILPRICE,
 li.EXTENDEDPRICE,
 li.DISCOUNT,
 ps.SUPPLYCOST,
 li.TAX,
 li.RETURNFLAG,
 o.ORDERDATE,
 o.ORDERSTATUS,
 o.ORDERPRIORITY,
 o.CLERK
from {{ ref('stg_lineitems') }} li 
left join {{ ref('stg_orders') }} o on li.ORDERKEY = o.ORDERKEY
left join {{ ref('stg_parts') }} p on li.PARTKEY = p.PARTKEY 
left join {{ ref('stg_partsupp') }} ps on li.PARTKEY = ps.PARTKEY and li.SUPPKEY=ps.SUPPKEY