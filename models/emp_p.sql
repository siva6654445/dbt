select *
from {{ source('demo', 'fact_employee_performance') }}