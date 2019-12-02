view: duplicate_anonymous_ids {
  sql_table_name: javascript.Duplicate_Anonymous_Ids ;;

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
