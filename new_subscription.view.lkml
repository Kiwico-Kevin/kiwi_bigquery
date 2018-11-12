view: new_subscription {
  sql_table_name: php.new_subscription ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: context_library_name {
    type: string
    sql: ${TABLE}.context_library_name ;;
  }

  dimension: context_library_version {
    type: string
    sql: ${TABLE}.context_library_version ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: event_text {
    type: string
    sql: ${TABLE}.event_text ;;
  }

  dimension_group: loaded {
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
    sql: ${TABLE}.loaded_at ;;
  }

  dimension: message_id {
    type: string
    sql: ${TABLE}.message_id ;;
  }

  dimension_group: original_timestamp {
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
    sql: ${TABLE}.original_timestamp ;;
  }

  dimension_group: received {
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
    sql: ${TABLE}.received_at ;;
  }

  dimension_group: sent {
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
    sql: ${TABLE}.sent_at ;;
  }

  dimension: sub_alternate {
    type: number
    sql: ${TABLE}.sub_alternate ;;
  }

  dimension: sub_autorenew {
    type: number
    sql: ${TABLE}.sub_autorenew ;;
  }

  dimension: sub_billing_address_city {
    type: string
    sql: ${TABLE}.sub_billing_address_city ;;
  }

  dimension: sub_billing_address_country_id {
    type: string
    sql: ${TABLE}.sub_billing_address_country_id ;;
  }

  dimension: sub_billing_address_firstname {
    type: string
    sql: ${TABLE}.sub_billing_address_firstname ;;
  }

  dimension: sub_billing_address_lastname {
    type: string
    sql: ${TABLE}.sub_billing_address_lastname ;;
  }

  dimension: sub_billing_address_postcode {
    type: string
    sql: ${TABLE}.sub_billing_address_postcode ;;
  }

  dimension: sub_billing_address_region {
    type: string
    sql: ${TABLE}.sub_billing_address_region ;;
  }

  dimension: sub_billing_address_street {
    type: string
    sql: ${TABLE}.sub_billing_address_street ;;
  }

  dimension: sub_channel_description {
    type: string
    sql: ${TABLE}.sub_channel_description ;;
  }

  dimension: sub_channel_id {
    type: number
    sql: ${TABLE}.sub_channel_id ;;
  }

  dimension: sub_channel_name {
    type: string
    sql: ${TABLE}.sub_channel_name ;;
  }

  dimension: sub_channel_prefix {
    type: string
    sql: ${TABLE}.sub_channel_prefix ;;
  }

  dimension: sub_children {
    type: string
    sql: ${TABLE}.sub_children ;;
  }

  dimension: sub_crates {
    type: string
    sql: ${TABLE}.sub_crates ;;
  }

  dimension: sub_cust_customer_group {
    type: string
    sql: ${TABLE}.sub_cust_customer_group ;;
  }

  dimension: sub_cust_email {
    type: string
    sql: ${TABLE}.sub_cust_email ;;
  }

  dimension: sub_cust_entity_id {
    type: number
    sql: ${TABLE}.sub_cust_entity_id ;;
  }

  dimension: sub_cust_group_id {
    type: number
    sql: ${TABLE}.sub_cust_group_id ;;
  }

  dimension: sub_cust_is_active {
    type: number
    sql: ${TABLE}.sub_cust_is_active ;;
  }

  dimension: sub_customer_id {
    type: number
    sql: ${TABLE}.sub_customer_id ;;
  }

  dimension_group: sub_date_start {
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
    sql: ${TABLE}.sub_date_start ;;
  }

  dimension: sub_dupe_ok {
    type: number
    sql: ${TABLE}.sub_dupe_ok ;;
  }

  dimension: sub_encrypted_giftee_sub_id {
    type: string
    sql: ${TABLE}.sub_encrypted_giftee_sub_id ;;
  }

  dimension: sub_encrypted_gifter_sub_id {
    type: string
    sql: ${TABLE}.sub_encrypted_gifter_sub_id ;;
  }

  dimension: sub_encrypted_sub_id {
    type: string
    sql: ${TABLE}.sub_encrypted_sub_id ;;
  }

  dimension: sub_first_crate_to_me {
    type: number
    sql: ${TABLE}.sub_first_crate_to_me ;;
  }

  dimension: sub_first_middle_last {
    type: string
    sql: ${TABLE}.sub_first_middle_last ;;
  }

  dimension: sub_free_iterations {
    type: number
    sql: ${TABLE}.sub_free_iterations ;;
  }

  dimension: sub_giftee_customer_group {
    type: string
    sql: ${TABLE}.sub_giftee_customer_group ;;
  }

  dimension: sub_giftee_customer_id {
    type: number
    sql: ${TABLE}.sub_giftee_customer_id ;;
  }

  dimension: sub_giftee_email {
    type: string
    sql: ${TABLE}.sub_giftee_email ;;
  }

  dimension: sub_giftee_entity_id {
    type: number
    sql: ${TABLE}.sub_giftee_entity_id ;;
  }

  dimension: sub_giftee_giftee_access_level {
    type: number
    sql: ${TABLE}.sub_giftee_giftee_access_level ;;
  }

  dimension_group: sub_giftee_giftee_access_start {
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
    sql: ${TABLE}.sub_giftee_giftee_access_start_date ;;
  }

  dimension: sub_giftee_group_id {
    type: number
    sql: ${TABLE}.sub_giftee_group_id ;;
  }

  dimension: sub_giftee_is_active {
    type: number
    sql: ${TABLE}.sub_giftee_is_active ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.sub_id ;;
  }

  dimension: sub_is_deluxe {
    type: string
    sql: ${TABLE}.sub_is_deluxe ;;
  }

  dimension: sub_iterations {
    type: number
    sql: ${TABLE}.sub_iterations ;;
  }

  dimension: sub_last_iteration {
    type: number
    sql: ${TABLE}.sub_last_iteration ;;
  }

  dimension_group: sub_last_paid {
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
    sql: ${TABLE}.sub_last_paid_date ;;
  }

  dimension_group: sub_last_shipped {
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
    sql: ${TABLE}.sub_last_shipped_date ;;
  }

  dimension: sub_old_iterations {
    type: number
    sql: ${TABLE}.sub_old_iterations ;;
  }

  dimension: sub_period_expire_type {
    type: string
    sql: ${TABLE}.sub_period_expire_type ;;
  }

  dimension: sub_period_expire_value {
    type: number
    sql: ${TABLE}.sub_period_expire_value ;;
  }

  dimension: sub_period_id {
    type: number
    sql: ${TABLE}.sub_period_id ;;
  }

  dimension: sub_period_name {
    type: string
    sql: ${TABLE}.sub_period_name ;;
  }

  dimension: sub_period_period_type {
    type: string
    sql: ${TABLE}.sub_period_period_type ;;
  }

  dimension: sub_period_recurr_value {
    type: number
    sql: ${TABLE}.sub_period_recurr_value ;;
  }

  dimension: sub_primary_order_id {
    type: number
    sql: ${TABLE}.sub_primary_order_id ;;
  }

  dimension: sub_primary_order_item_id {
    type: number
    sql: ${TABLE}.sub_primary_order_item_id ;;
  }

  dimension: sub_product_line {
    type: string
    sql: ${TABLE}.sub_product_line ;;
  }

  dimension: sub_queue_id {
    type: number
    sql: ${TABLE}.sub_queue_id ;;
  }

  dimension: sub_queue_position {
    type: number
    sql: ${TABLE}.sub_queue_position ;;
  }

  dimension: sub_shipping_address_city {
    type: string
    sql: ${TABLE}.sub_shipping_address_city ;;
  }

  dimension: sub_shipping_address_country_id {
    type: string
    sql: ${TABLE}.sub_shipping_address_country_id ;;
  }

  dimension: sub_shipping_address_firstname {
    type: string
    sql: ${TABLE}.sub_shipping_address_firstname ;;
  }

  dimension: sub_shipping_address_id {
    type: number
    sql: ${TABLE}.sub_shipping_address_id ;;
  }

  dimension: sub_shipping_address_lastname {
    type: string
    sql: ${TABLE}.sub_shipping_address_lastname ;;
  }

  dimension: sub_shipping_address_postcode {
    type: string
    sql: ${TABLE}.sub_shipping_address_postcode ;;
  }

  dimension: sub_shipping_address_region {
    type: string
    sql: ${TABLE}.sub_shipping_address_region ;;
  }

  dimension: sub_shipping_address_street {
    type: string
    sql: ${TABLE}.sub_shipping_address_street ;;
  }

  dimension: sub_status {
    type: string
    sql: ${TABLE}.sub_status ;;
  }

  dimension: sub_status_iter_zone {
    type: string
    sql: ${TABLE}.sub_status_iter_zone ;;
  }

  dimension: sub_status_position_zone {
    type: string
    sql: ${TABLE}.sub_status_position_zone ;;
  }

  dimension: sub_status_product_line {
    type: string
    sql: ${TABLE}.sub_status_product_line ;;
  }

  dimension: sub_store_id {
    type: number
    sql: ${TABLE}.sub_store_id ;;
  }

  dimension: sub_sub_length {
    type: number
    sql: ${TABLE}.sub_sub_length ;;
  }

  dimension: sub_sub_primary_sku {
    type: string
    sql: ${TABLE}.sub_sub_primary_sku ;;
  }

  dimension: sub_total_iterations {
    type: number
    sql: ${TABLE}.sub_total_iterations ;;
  }

  dimension: sub_type {
    type: string
    sql: ${TABLE}.sub_type ;;
  }

  dimension: sub_vip {
    type: number
    sql: ${TABLE}.sub_vip ;;
  }

  dimension: sub_zone {
    type: number
    sql: ${TABLE}.sub_zone ;;
  }

  dimension: template_id {
    type: number
    sql: ${TABLE}.template_id ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension_group: uuid_ts {
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
    sql: ${TABLE}.uuid_ts ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      sub_period_name,
      sub_channel_name,
      context_library_name,
      sub_shipping_address_firstname,
      sub_billing_address_lastname,
      sub_billing_address_firstname,
      sub_shipping_address_lastname
    ]
  }
}
