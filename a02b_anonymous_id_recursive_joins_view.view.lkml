view: a02b_anonymous_id_recursive_joins_view {
  derived_table: {
    sql:
    SELECT
      * EXCEPT (ROW_NUMBER)
    FROM (
      SELECT
        *,
        ROW_NUMBER() OVER (PARTITION BY alias ORDER BY original_timestamp DESC) AS ROW_NUMBER
      FROM
         ${a02_anonymous_id_recursive_joins.SQL_TABLE_NAME}
        )
WHERE
  ROW_NUMBER = 1
 ;;
    sql_trigger_value: SELECT MAX(original_timestamp) FROM ${a02_anonymous_id_recursive_joins.SQL_TABLE_NAME} ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: universal_alias {
    sql: ${TABLE}.universal_alias ;;
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
