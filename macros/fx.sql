{% macro filter_rank(col, val) %}
    {{ col }} = {{ val }}
{% endmacro %}


{% macro filter_dept(col, val) %}
    {{ col }} = '{{ val }}'
{% endmacro %}
