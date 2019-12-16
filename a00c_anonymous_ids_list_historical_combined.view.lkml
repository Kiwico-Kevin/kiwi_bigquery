view: a00c_anonymous_ids_list_historical_combined {
  derived_table: {
    sql: select distinct A.*
        from
        (
          SELECT
            alias AS alias,
            next_alias AS next_alias,
            original_timestamp AS original_timestamp
          FROM ${a00a_anonymous_ids_list_historical_2017.SQL_TABLE_NAME}
          UNION ALL
          SELECT
            alias AS alias,
            next_alias AS next_alias,
            original_timestamp AS original_timestamp
          FROM ${a00b_anonymous_ids_list_historical_2019.SQL_TABLE_NAME}
        )A
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
