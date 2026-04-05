{% macro function_1(x) %}

case 
    when {{ x }} < current_timestamp() then 'Past'
    else 'Future'
end

{% endmacro %}