view: a01b_anonymous_ids_list_complete {
  derived_table: {
    sql: select distinct A.*
        from
        (
          SELECT
            alias AS alias,
            next_alias AS next_alias,
            original_timestamp AS original_timestamp
          FROM ${a00d_anonymous_historical_combined_unique.SQL_TABLE_NAME}
          UNION ALL
          SELECT
            alias AS alias,
            next_alias AS next_alias,
            original_timestamp AS original_timestamp
          FROM ${a01_anonymous_ids_list.SQL_TABLE_NAME}
        )A
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
