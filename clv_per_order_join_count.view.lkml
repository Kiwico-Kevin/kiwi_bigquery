view: clv_per_order_join_count {
  sql_table_name: javascript.CLV_PER_ORDER_JOIN_COUNT ;;

  dimension: join_counts {
    type: number
    sql: ${TABLE}.join_counts ;;
  }

  dimension: order_item_table_order_id {
    type: number
    sql: ${TABLE}.order_item_table_order_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
