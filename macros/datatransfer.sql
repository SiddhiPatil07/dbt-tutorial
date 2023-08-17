{% set stored_proc_ddl_query %}
        CALL {{ target.database }}.{{ target.schema }}.transfer_customers_data();
    {% endset %}

    {% do run_query(stored_proc_ddl_query) %}
    {% do log('Created stored proc:\t' ~ run_proc_2, True) %}

    {# Return the name of the stored procedure #}
    {%- do return(run_proc_2) %}
{% endmacro %}

