{%- macro type_timestamp() -%}
  {{ return(adapter.dispatch('type_timestamp', 'datavault4dbt')()) }}
{%- endmacro -%}

{%- macro default__type_timestamp() -%}
    {{ dbt_utils.type_timestamp() }}
{%- endmacro -%}

{%- macro sqlserver__type_timestamp() -%}
    datetime2
{%- endmacro -%}
