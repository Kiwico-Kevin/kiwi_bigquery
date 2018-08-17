view: magento_subscriptions {
  sql_table_name: javascript.magento_subscriptions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: alternate {
    type: number
    sql: ${TABLE}.alternate ;;
  }

  dimension: autorenew {
    type: number
    sql: ${TABLE}.autorenew ;;
  }

  dimension: channel_id {
    type: number
    sql: ${TABLE}.channel_id ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: date_start {
    type: string
    sql: ${TABLE}.date_start ;;
  }

  dimension: dupe_ok {
    type: number
    sql: ${TABLE}.dupe_ok ;;
  }

  dimension: exact_match {
    type: number
    sql: ${TABLE}.exact_match ;;
  }

  dimension: first_crate_to_me {
    type: number
    sql: ${TABLE}.first_crate_to_me ;;
  }

  dimension: flags {
    type: number
    sql: ${TABLE}.flags ;;
  }

  dimension: free_iterations {
    type: number
    sql: ${TABLE}.free_iterations ;;
  }

  dimension: free_sibling_iterations {
    type: number
    sql: ${TABLE}.free_sibling_iterations ;;
  }

  dimension: giftee_access_level {
    type: number
    sql: ${TABLE}.giftee_access_level ;;
  }

  dimension_group: giftee_access_start {
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
    sql: CAST(${TABLE}.giftee_access_start_date AS TIMESTAMP) ;;
  }

  dimension: giftee_customer_id {
    type: number
    sql: ${TABLE}.giftee_customer_id ;;
  }

  dimension: giftee_email {
    type: string
    sql: ${TABLE}.giftee_email ;;
  }

  dimension: iterate_date {
    type: string
    sql: ${TABLE}.iterate_date ;;
  }

  dimension: iterations {
    type: number
    sql: ${TABLE}.iterations ;;
  }

  dimension: last_paid_date {
    type: string
    sql: ${TABLE}.last_paid_date ;;
  }

  dimension: last_shipped_date {
    type: string
    sql: ${TABLE}.last_shipped_date ;;
  }

  dimension: matching_subs {
    type: string
    sql: ${TABLE}.matching_subs ;;
  }

  dimension: next_shipping_address_id {
    type: number
    sql: ${TABLE}.next_shipping_address_id ;;
  }

  dimension: old_iterations {
    type: number
    sql: ${TABLE}.old_iterations ;;
  }

  dimension: payment_id {
    type: number
    sql: ${TABLE}.payment_id ;;
  }

  dimension: period_type {
    type: number
    sql: ${TABLE}.period_type ;;
  }

  dimension: primary_order_id {
    type: number
    sql: ${TABLE}.primary_order_id ;;
  }

  dimension: primary_order_item_id {
    type: number
    sql: ${TABLE}.primary_order_item_id ;;
  }

  dimension: queue_id {
    type: number
    sql: ${TABLE}.queue_id ;;
  }

  dimension: queue_position {
    type: number
    sql: ${TABLE}.queue_position ;;
  }

  dimension: received_before {
    type: number
    sql: ${TABLE}.received_before ;;
  }

  dimension: remind_later {
    type: number
    sql: ${TABLE}.remind_later ;;
  }

  dimension: shipping_address_id {
    type: number
    sql: ${TABLE}.shipping_address_id ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: vip {
    type: number
    sql: ${TABLE}.vip ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
