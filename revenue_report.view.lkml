view: revenue_report {
  sql_table_name: javascript.revenue_report ;;

  dimension: oi_revenue_report_attributed_to_o {
    type: number
    sql: ${TABLE}.Oi_Revenue_Report_Attributed_to_O ;;
  }

  dimension: oi_revenue_report_attributed_to_oi {
    type: number
    sql: ${TABLE}.Oi_Revenue_Report_Attributed_to_Oi ;;
  }

  dimension: oi_revenue_report_attributed_to_sku {
    type: string
    sql: ${TABLE}.Oi_Revenue_Report_Attributed_to_SKU ;;
  }

  dimension_group: oi_revenue_report_date_paid {
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

  dimension_group: oi_revenue_report_date_shipped {
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

  dimension: oi_revenue_report_oi_sku {
    type: string
    sql: ${TABLE}.Oi_Revenue_Report_Oi_SKU ;;
  }

  dimension: oi_revenue_report_order_id {
    type: number
    sql: ${TABLE}.Oi_Revenue_Report_Order_ID ;;
  }

  dimension: oi_revenue_report_order_item_id {
    type: number
    sql: ${TABLE}.Oi_Revenue_Report_Order_Item_ID ;;
  }

  dimension: oi_revenue_report_recognized_revenue {
    type: number
    sql: ${TABLE}.Oi_Revenue_Report_Recognized_Revenue ;;
  }

  dimension: oi_revenue_report_recognized_revenue_if_shipped {
    type: number
    sql: ${TABLE}.Oi_Revenue_Report_Recognized_Revenue_If_Shipped ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
