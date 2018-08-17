view: monthly_activity {
  derived_table: {
    #sql_trigger_value: select current_date ;;
    #sortkeys: ["signup_month"]
    #distribution: "user_id"
    sql: SELECT

                customer.entity_id as user_id
              , date_trunc(DATE(customer.created_at), MONTH) as signup_month
              , month_list.purchase_month as purchase_month
              , COALESCE(data.monthly_purchases, 0) as monthly_purchases
              , COALESCE(data.total_purchase_amount, 0) as monthly_spend
              , row_number() over() AS key
            FROM
              magento_customer customer

                        CROSS JOIN

              (
                SELECT
                  DISTINCT(date_trunc(DATE(customer_revenue_report.date_shipped), MONTH)) as purchase_month
                FROM ${customer_revenue_report.SQL_TABLE_NAME} customer_revenue_report
              ) as month_list

            LEFT JOIN

              (
                SELECT
                      o.customer_id
                    , date_trunc(DATE(o.date_shipped), MONTH) as purchase_month
                    , COUNT(distinct o.id) AS monthly_purchases
                    , sum(o.recognized_revenue) AS total_purchase_amount

                FROM ${customer_revenue_report.SQL_TABLE_NAME} o
                GROUP BY 1,2
              ) as data
            ON data.purchase_month = month_list.purchase_month
            AND data.customer_id = customer.entity_id


            where month_list.purchase_month >= date_trunc(DATE(customer.created_at), MONTH)


             ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension_group: signup {
    type: time
    timeframes: [month]
    sql: ${TABLE}.signup_month ;;
  }

  dimension_group: purchase {
    type: time
    timeframes: [month]
    sql: ${TABLE}.purchase_month ;;
  }

  dimension: months_since_signup {
    type: number
    sql: datediff('month', ${TABLE}.signup_month, ${TABLE}.purchase_month) ;;
  }

  dimension: monthly_purchases {
    type: number
    sql: ${TABLE}.monthly_purchases ;;
  }

  dimension: monthly_spend {
    type: number
    sql: ${TABLE}.monthly_spend ;;
  }

  measure: total_users {
    type: count_distinct
    sql: ${user_id} ;;
    drill_fields: [users.id, users.age, users.name, user_order_facts.lifetime_orders]
  }

  measure: total_active_users {
    type: count_distinct
    sql: ${user_id} ;;
    drill_fields: [users.id, users.age, users.name, user_order_facts.lifetime_orders]

    filters: {
      field: monthly_purchases
      value: ">0"
    }
  }

  measure: percent_of_cohort_active {
    type: number
    value_format_name: percent_1
    sql: 1.0 * ${total_active_users} / nullif(${total_users},0) ;;
    drill_fields: [user_id, monthly_purchases, total_amount_spent]
  }

  measure: total_amount_spent {
    type: sum
    value_format_name: usd
    sql: ${monthly_spend} ;;
    drill_fields: [detail*]
  }

  measure: spend_per_user {
    type: number
    value_format_name: usd
    sql: ${total_amount_spent} / nullif(${total_users},0) ;;
    drill_fields: [user_id, monthly_purchases, total_amount_spent]
  }

  measure: spend_per_active_user {
    type: number
    value_format_name: usd
    sql: ${total_amount_spent} / nullif(${total_active_users},0) ;;
    drill_fields: [user_id, total_amount_spent]
  }

  dimension: key {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.key ;;
  }

  set: detail {
    fields: [user_id, signup_month, monthly_purchases, monthly_spend]
  }
}
