view: a02_anonymous_id_recursive_joins {
  derived_table: {
    sql:
          SELECT DISTINCT
      r0.alias
      , COALESCE(
              r9.next_alias
            , r9.alias
            , r8.alias
            , r7.alias
            , r6.alias
            , r5.alias
            , r4.alias
            , r3.alias
            , r2.alias
            , r1.alias
            , r0.alias
          ) AS universal_alias
          FROM ${a01_anonymous_ids_list.SQL_TABLE_NAME} AS r0
          LEFT JOIN ${a01_anonymous_ids_list.SQL_TABLE_NAME} r1 ON r0.next_alias = r1.alias
          LEFT JOIN ${a01_anonymous_ids_list.SQL_TABLE_NAME} r2 ON r1.next_alias = r2.alias
          LEFT JOIN ${a01_anonymous_ids_list.SQL_TABLE_NAME} r3 ON r2.next_alias = r3.alias
          LEFT JOIN ${a01_anonymous_ids_list.SQL_TABLE_NAME} r4 ON r3.next_alias = r4.alias
          LEFT JOIN ${a01_anonymous_ids_list.SQL_TABLE_NAME} r5 ON r4.next_alias = r5.alias
          LEFT JOIN ${a01_anonymous_ids_list.SQL_TABLE_NAME} r6 ON r5.next_alias = r6.alias
          LEFT JOIN ${a01_anonymous_ids_list.SQL_TABLE_NAME} r7 ON r6.next_alias = r7.alias
          LEFT JOIN ${a01_anonymous_ids_list.SQL_TABLE_NAME} r8 ON r7.next_alias = r8.alias
          LEFT JOIN ${a01_anonymous_ids_list.SQL_TABLE_NAME} r9 ON r8.next_alias = r9.alias
 ;;
    sql_trigger_value: SELECT CURRENT_DATE() ;;
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
