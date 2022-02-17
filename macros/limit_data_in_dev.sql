{% macro limit_data_in_dev(column_name, development_days_cutoff=30) %}
{% if target.name == 'default' %}
WHERE {{column_name}} >= dateadd(dd,development_days_cutoff * -1,current_timestamp)
{% endif %}
{% endmacro %}