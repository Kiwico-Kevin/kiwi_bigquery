view: customer_revenue_report {
  derived_table: {
    sql:
    SELECT
        revenue.Oi_Revenue_Report_order_item_id as order_item_id,
        revenue.Oi_Revenue_Report_order_id as order_id,
        revenue.Oi_Revenue_Report_oi_sku as oi_sku,
        revenue.Oi_Revenue_Report_attributed_to_oi as attributed_to_oi,
        revenue.Oi_Revenue_Report_attributed_to_o as attributed_to_o,
        revenue.Oi_Revenue_Report_attributed_to_sku as attributed_to_sku,
        revenue.Oi_Revenue_Report_date_paid as date_paid,
        revenue.Oi_Revenue_Report_date_shipped as date_shipped,
        revenue.Oi_Revenue_Report_recognized_revenue_if_shipped as recognized_revenue_if_shipped,
        revenue.Oi_Revenue_Report_recognized_revenue as recognized_revenue,
        kiwi_order.customer_id as customer_id,
        TIMESTAMP_DIFF(revenue.Oi_Revenue_Report_date_shipped, customer.created_at, DAY) as days_since_user_signup,
        FLOOR(TIMESTAMP_DIFF(revenue.Oi_Revenue_Report_date_shipped, customer.created_at, DAY)/30) as months_since_user_signup,
        FLOOR(TIMESTAMP_DIFF(CURRENT_TIMESTAMP(), customer.created_at, DAY)/30) as eligible_months,
        customer.created_at as signup_date,
        row_number() over() AS id
      FROM revenue_report revenue
      LEFT JOIN magento_flat_order kiwi_order on revenue.Oi_Revenue_Report_order_id = kiwi_order.entity_id
      LEFT JOIN magento_customer customer on kiwi_order.customer_id = customer.entity_id ;;
  }

#         date_trunc ('month', customer.created_at) as created_month,
  measure: count {
  type: count
  }

  dimension: order_item_id {
  type: number
  value_format: "0"
  sql: ${TABLE}.order_item_id ;;
  }

  dimension: order_id {
  type: number
  value_format: "0"
  sql: ${TABLE}.order_id ;;
  }

  dimension: oi_sku {
  type: string
  sql: ${TABLE}.oi_sku ;;
  }

  dimension: attributed_to_oi {
  type: number
  value_format: "0"
  sql: ${TABLE}.attributed_to_oi ;;
  }

  dimension: attributed_to_o {
  type: number
  value_format: "0"
  sql: ${TABLE}.attributed_to_o ;;
  }

  dimension: attributed_to_sku {
  type: string
  sql: ${TABLE}.attributed_to_sku;;
  }

  dimension: sku_store {
  sql: |
  CASE WHEN ${TABLE}.attributed_to_sku LIKE 'kw-%' THEN 'Kiwi'
  WHEN ${TABLE}.attributed_to_sku LIKE 'dd-%' THEN 'Doodle'
  WHEN ${TABLE}.attributed_to_sku LIKE 'tk-%' THEN 'Tinker'
  WHEN ${TABLE}.attributed_to_sku LIKE 'kl-%' THEN 'Koala'
  WHEN ${TABLE}.attributed_to_sku LIKE 'cr-%' THEN 'Cricket'
  WHEN ${TABLE}.attributed_to_sku LIKE 'tot-%' THEN 'Cricket'
  ELSE 'Shop'
  END ;;
  }

  dimension: sku_type {
  sql: |
  CASE WHEN ${TABLE}.attributed_to_sku LIKE '%trial%' THEN 'trial'
  WHEN ${TABLE}.attributed_to_sku LIKE '%01%' THEN 'Monthly'
  WHEN ${TABLE}.attributed_to_sku LIKE '%12R%' THEN '12M Join'
  WHEN ${TABLE}.attributed_to_sku LIKE '%06R%' THEN '6M Join'
  WHEN ${TABLE}.attributed_to_sku LIKE '%03R%' THEN '3M Join'
  WHEN ${TABLE}.attributed_to_sku LIKE '%12%' THEN '12M Gift'
  WHEN ${TABLE}.attributed_to_sku LIKE '%06%' THEN '6M Gift'
  WHEN ${TABLE}.attributed_to_sku LIKE '%03%' THEN '3M Gift'
  WHEN ${TABLE}.attributed_to_sku LIKE '%36%' THEN '36M Gift'
  WHEN ${TABLE}.attributed_to_sku LIKE '%24%' THEN '24M Gift'
  WHEN ${TABLE}.attributed_to_sku LIKE '%-6%' THEN '6M Gift'
  WHEN ${TABLE}.attributed_to_sku LIKE '%year%' THEN '12M Gift'
  WHEN ${TABLE}.attributed_to_sku LIKE '%kw-04%' THEN '4M Deal'
  WHEN ${TABLE}.attributed_to_sku LIKE '%single%' THEN '1M Gift'
  WHEN ${TABLE}.attributed_to_sku LIKE '%kw-2%' THEN '2M Gift'
  WHEN ${TABLE}.attributed_to_sku LIKE '%-1%' THEN '1M Gift'
  ELSE 'Shop'
  END ;;
  }

  dimension: sku_category {
  sql: |
  CASE WHEN ${sku_type} LIKE '%trial%' THEN 'trial'
  WHEN ${sku_type} LIKE '%Join%' THEN 'Join'
  WHEN ${sku_type} LIKE '%Monthly%' THEN 'trial'
  WHEN ${sku_type} LIKE '%Gift%' THEN 'Gift'
  WHEN ${sku_type} LIKE '%Deal%' THEN 'Deal'
  ELSE 'Shop'
  END ;;
  }

  dimension_group: date_paid {
  type: time
  timeframes: [month, year]
  sql: ${TABLE}.date_paid ;;
  }

  dimension_group: date_shipped {
  type: time
  timeframes: [month, year]
  sql: ${TABLE}.date_shipped ;;
  }

  dimension: recognized_revenue_if_shipped {
  type: number
  sql: ${TABLE}.recognized_revenue_if_shipped ;;
  }

  dimension: cohort_size {
  type: number
  value_format: "#,##0"
  sql: ${TABLE}.cohort_size ;;
  }

  measure: total_cohort_size {
  type: sum_distinct
  sql: ${TABLE}.cohort_size ;;
  sql_distinct_key: ${TABLE}.created_month ;;
  }

#   measure: orders_within_month {
#   type: count_distinct
#   sql: ${customer_id} ;;
#   filters: {
#     field: months_since_user_signup
#     value: 0
#   }
#   }

  measure: recognized_revenue {
  type: sum
  value_format: "$#,##0.00"
  sql: ${TABLE}.recognized_revenue ;;
  }

  dimension: customer_id {
  type: number
  primary_key: yes
  sql: ${TABLE}.customer_id ;;
}

  measure: distinct_customers {
  type: count_distinct
  value_format: "#,##0"
  sql: ${TABLE}.customer_id ;;
  }

  measure: avg_revenue_customer {
  type: number
  value_format: "$#,##0.00"
  sql: ${recognized_revenue}/${distinct_customers} ;;
  }

  measure: avg_revenue_cohort {
  type: number
  value_format: "$#,##0.00"
  sql: ${recognized_revenue}/${total_cohort_size} ;;
  }

  measure: customer_retention {
  type: number
  value_format: "0.00%"
  sql: ${distinct_customers}/${total_cohort_size} ;;
}

  dimension_group: signup_date {
  type: time
  timeframes: [month, year]
  sql: ${TABLE}.signup_date ;;
}

  dimension: eligible_months {
  type: number
  sql: ${TABLE}.eligible_months ;;
}
  dimension: days_since_user_signup {
  type: number
  sql: GREATEST(${TABLE}.days_since_user_signup, 0) ;;
}
  dimension: months_since_user_signup{
  type: number
  sql: GREATEST(${TABLE}.months_since_user_signup, 0) ;;
}
  dimension: months_since_user_signup_tier {
  type: tier
  tiers: [1,3,6,12,24]
  style: integer
  sql: ${months_since_user_signup} ;;
}

  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: customer_revenue_report {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
