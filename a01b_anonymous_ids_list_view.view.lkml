view: a01b_anonymous_ids_list_view {
  derived_table: {
    sql:
    SELECT
    * EXCEPT (ROW_NUMBER)
    FROM (
    SELECT
    *,
    ROW_NUMBER() OVER (PARTITION BY alias ORDER BY original_timestamp DESC) AS ROW_NUMBER
    FROM
    ${a01_anonymous_ids_list.SQL_TABLE_NAME}
    )
    WHERE
    ROW_NUMBER = 1
    ;;
    sql_trigger_value: SELECT MAX(original_timestamp) FROM ${a01_anonymous_ids_list.SQL_TABLE_NAME} ;;
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
