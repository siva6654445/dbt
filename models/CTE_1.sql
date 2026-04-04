
with cte as (

    select
        "TIME" as event_time,
        date("TIME") as event_date,
        hour("TIME") as hour_of_event,
        dayname(date("TIME")) as day,
        case 
            when dayname(date("TIME")) in ('Sun','Sat') then 'weekend'
            else 'Businessday'
        end as type

    from {{ source('demo','t661') }}

    where "TIME" > '2018-01-01'

)

select * from cte