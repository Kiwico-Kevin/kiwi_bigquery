view: kiwi_success_pageviews {
  sql_table_name: javascript.kiwi_success_pageviews ;;

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
