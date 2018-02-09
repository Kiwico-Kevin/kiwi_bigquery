view: consolidated_anonymous_ids {
  sql_table_name: javascript.Consolidated_Anonymous_Ids ;;

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
