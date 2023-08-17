-- Model that calls the macro
{{ config(materialized='table') }}
{{ stored_proc_ddl_query() }}

