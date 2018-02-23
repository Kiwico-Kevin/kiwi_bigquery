view: revenue_report {
  sql_table_name: javascript.revenue_report ;;

  dimension: attributed_to_o {
    type: number
    sql: ${TABLE}.Oi_Revenue_Report_Attributed_to_O ;;
  }

  dimension: attributed_to_oi {
    type: number
    sql: ${TABLE}.Oi_Revenue_Report_Attributed_to_Oi ;;
  }

  dimension: attributed_to_sku {
    type: string
    sql: ${TABLE}.Oi_Revenue_Report_Attributed_to_SKU ;;
  }

  dimension_group: date_paid {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Oi_Revenue_Report_Date_Paid ;;
  }

  dimension_group: date_shipped {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Oi_Revenue_Report_Date_Shipped ;;
  }

  dimension: oi_sku {
    type: string
    sql: ${TABLE}.Oi_Revenue_Report_Oi_SKU ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.Oi_Revenue_Report_Order_ID ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}.Oi_Revenue_Report_Order_Item_ID ;;
  }

  dimension: recognized_revenue {
    type: number
    sql: ${TABLE}.Oi_Revenue_Report_Recognized_Revenue ;;
  }

  dimension: recognized_revenue_if_shipped {
    type: number
    sql: ${TABLE}.Oi_Revenue_Report_Recognized_Revenue_If_Shipped ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
