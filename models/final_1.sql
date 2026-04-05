with cte as (

    select
        eg.id as emp_id,
        eg.*,
        ep.* exclude (id)

    from {{ ref('emp_gen') }} eg

    inner join {{ ref('emp_p') }} ep
        on eg.id = ep.id

)

select * from cte