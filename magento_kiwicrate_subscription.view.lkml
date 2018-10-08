view: magento_kiwicrate_subscription {
  sql_table_name: rdstobigquery.magento_kiwicrate_subscription ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: _sdc_batched {
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
    sql: ${TABLE}._sdc_batched_at ;;
  }

  dimension_group: _sdc_extracted {
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
    sql: ${TABLE}._sdc_extracted_at ;;
  }

  dimension_group: _sdc_received {
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
    sql: ${TABLE}._sdc_received_at ;;
  }

  dimension: _sdc_sequence {
    type: number
    sql: ${TABLE}._sdc_sequence ;;
  }

  dimension: _sdc_table_version {
    type: number
    sql: ${TABLE}._sdc_table_version ;;
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

  dimension_group: date_start {
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
    sql: ${TABLE}.giftee_access_start_date ;;
  }

  dimension: giftee_customer_id {
    type: number
    sql: ${TABLE}.giftee_customer_id ;;
  }

  dimension: giftee_email {
    type: string
    sql: ${TABLE}.giftee_email ;;
  }

  dimension: is_dlx {
    type: yesno
    sql: ${TABLE}.is_dlx ;;
  }

  dimension_group: iterate {
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
    sql: ${TABLE}.iterate_date ;;
  }

  dimension: iterations {
    type: number
    sql: ${TABLE}.iterations ;;
  }

  dimension_group: last_paid {
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
    sql: ${TABLE}.last_paid_date ;;
  }

  dimension_group: last_shipped {
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
    sql: ${TABLE}.last_shipped_date ;;
  }

  dimension: old_iterations {
    type: number
    sql: ${TABLE}.old_iterations ;;
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
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: vip {
    type: yesno
    sql: ${TABLE}.vip ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
