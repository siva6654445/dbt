with cte_1 as (

    select 
        ID,
        DEPARTMENT,   -- ✅ fixed
        SALARY,
        RANK() OVER (PARTITION BY DEPARTMENT ORDER BY SALARY DESC) AS RNK

    from {{ source('demo','employees') }}

) 

select * 
from cte_1
where {{ filter_rank('RNK', 5) }} and {{ filter_dept('DEPARTMENT' , 'IT')}}
