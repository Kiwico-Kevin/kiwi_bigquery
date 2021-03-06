view: a02_anonymous_id_recursive_joins {
  derived_table: {
    sql:
          SELECT DISTINCT
      r0.alias AS alias
      , COALESCE(
            r5.next_alias
            , r5.alias
            , r4.next_alias
            , r4.alias
            , r3.next_alias
            , r3.alias
            , r2.next_alias
            , r2.alias
            , r1.next_alias
            , r1.alias
            , r0.next_alias
            , r0.alias
          ) AS universal_alias
          , r0.original_timestamp AS original_timestamp
          FROM ${a01c_anonymous_ids_list_complete_unique.SQL_TABLE_NAME} AS r0
          LEFT JOIN ${a01c_anonymous_ids_list_complete_unique.SQL_TABLE_NAME} r1 ON r0.next_alias = r1.alias
          LEFT JOIN ${a01c_anonymous_ids_list_complete_unique.SQL_TABLE_NAME} r2 ON r1.next_alias = r2.alias
          LEFT JOIN ${a01c_anonymous_ids_list_complete_unique.SQL_TABLE_NAME} r3 ON r2.next_alias = r3.alias
          LEFT JOIN ${a01c_anonymous_ids_list_complete_unique.SQL_TABLE_NAME} r4 ON r3.next_alias = r4.alias
          LEFT JOIN ${a01c_anonymous_ids_list_complete_unique.SQL_TABLE_NAME} r5 ON r4.next_alias = r5.alias
 ;;
     sql_trigger_value: SELECT MAX(original_timestamp) FROM ${a01c_anonymous_ids_list_complete_unique.SQL_TABLE_NAME} ;;
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
