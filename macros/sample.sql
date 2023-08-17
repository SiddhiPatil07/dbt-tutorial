{% macro run_proc() %}
  {% do run_query("call dbt.public.SimpleProcedure();") %}
{% endmacro %}



