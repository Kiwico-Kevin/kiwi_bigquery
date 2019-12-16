view: a00d_anonymous_historical_combined_unique {
  derived_table: {
    sql:
    SELECT
    * EXCEPT (ROW_NUMBER)
    FROM (
    SELECT
    *,
    ROW_NUMBER() OVER (PARTITION BY alias ORDER BY original_timestamp DESC) AS ROW_NUMBER
    FROM
    ${a00c_anonymous_ids_list_historical_combined.SQL_TABLE_NAME}
    )
    WHERE
    ROW_NUMBER = 1
    ;;
    sql_trigger_value: SELECT 1 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }

  dimension: next_alias {
    type: string
    sql: ${TABLE}.next_alias ;;
  }

  set: detail {
    fields: [alias, next_alias]
  }
}
