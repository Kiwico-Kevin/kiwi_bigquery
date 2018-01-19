view: success_session_ids {
  sql_table_name: javascript.success_session_ids ;;

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
