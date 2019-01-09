view: funnel {


  derived_table: {
    sql:
    SELECT
      p.timestamp as event_time
    FROM pages p
      WHERE
      {% condition event_time %} u.created_at {% endcondition %}
    UNION
    ALL
      o.created_at as event_time
    FROM magento_kiwicrate_sales_flat_order o
    WHERE
      {% condition event_time %} o.created_at {% endcondition %} ;;
    }

#     , 'SIGNUP' as event_type
#   , u.id as user_id
#   , NULL as order_id
#    , 'ORDER' as event_type
#   , o.user_id as user_id
#   , o.id as order_id

dimension_group: event {
  type: time
  timeframes: [time,date,week,month,quarter,year]
  sql: ${TABLE}.event_time ;;
}
#   - dimension_group: event
#   type: time
#   timeframes: [time, date, week, month]
#   sql: ${TABLE}.event_time
#
#   dimension: user_id {
#   type: int
#   sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: order_id
#   type: int
#
#   - dimension: event_type
#
#   - measure: count_signups
#   type: count
#   filters:
#   event_type: SIGNUP
#   drill_fields: [users.id, users.name, users.created_time]
#
#   - measure: count_orders
#   type: count
#   filters:
#   event_type: ORDER
#   drill_fields: [users.id, users.name, users.created_time]
#
#   - measure: count
#   type: count
#   drill_fields: [users.id, users.name, users.created_time]


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

# view: measurement_date {
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
