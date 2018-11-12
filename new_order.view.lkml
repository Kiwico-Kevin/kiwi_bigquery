view: new_order {
  sql_table_name: php.new_order ;;

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

  dimension: order_ad {
    type: string
    sql: ${TABLE}.order_ad ;;
  }

  dimension: order_adset {
    type: string
    sql: ${TABLE}.order_adset ;;
  }

  dimension: order_applied_rule_ids {
    type: string
    sql: ${TABLE}.order_applied_rule_ids ;;
  }

  dimension: order_base_currency_code {
    type: string
    sql: ${TABLE}.order_base_currency_code ;;
  }

  dimension: order_base_discount_amount {
    type: number
    sql: ${TABLE}.order_base_discount_amount ;;
  }

  dimension: order_base_discount_canceled {
    type: number
    sql: ${TABLE}.order_base_discount_canceled ;;
  }

  dimension: order_base_discount_invoiced {
    type: number
    sql: ${TABLE}.order_base_discount_invoiced ;;
  }

  dimension: order_base_discount_refunded {
    type: number
    sql: ${TABLE}.order_base_discount_refunded ;;
  }

  dimension: order_base_giftcert_amount {
    type: number
    sql: ${TABLE}.order_base_giftcert_amount ;;
  }

  dimension: order_base_grand_total {
    type: number
    sql: ${TABLE}.order_base_grand_total ;;
  }

  dimension: order_base_kcredits_amount {
    type: number
    sql: ${TABLE}.order_base_kcredits_amount ;;
  }

  dimension: order_base_shipping_amount {
    type: number
    sql: ${TABLE}.order_base_shipping_amount ;;
  }

  dimension: order_base_shipping_canceled {
    type: number
    sql: ${TABLE}.order_base_shipping_canceled ;;
  }

  dimension: order_base_shipping_invoiced {
    type: number
    sql: ${TABLE}.order_base_shipping_invoiced ;;
  }

  dimension: order_base_shipping_refunded {
    type: number
    sql: ${TABLE}.order_base_shipping_refunded ;;
  }

  dimension: order_base_shipping_tax_amount {
    type: number
    sql: ${TABLE}.order_base_shipping_tax_amount ;;
  }

  dimension: order_base_shipping_tax_refunded {
    type: number
    sql: ${TABLE}.order_base_shipping_tax_refunded ;;
  }

  dimension: order_base_tax_amount {
    type: number
    sql: ${TABLE}.order_base_tax_amount ;;
  }

  dimension: order_base_total_canceled {
    type: number
    sql: ${TABLE}.order_base_total_canceled ;;
  }

  dimension: order_base_total_due {
    type: number
    sql: ${TABLE}.order_base_total_due ;;
  }

  dimension: order_base_total_invoiced {
    type: number
    sql: ${TABLE}.order_base_total_invoiced ;;
  }

  dimension: order_base_total_invoiced_cost {
    type: number
    sql: ${TABLE}.order_base_total_invoiced_cost ;;
  }

  dimension: order_base_total_offline_refunded {
    type: number
    sql: ${TABLE}.order_base_total_offline_refunded ;;
  }

  dimension: order_base_total_online_refunded {
    type: number
    sql: ${TABLE}.order_base_total_online_refunded ;;
  }

  dimension: order_base_total_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.order_base_total_paid ;;
  }

  dimension: order_base_total_refunded {
    type: number
    sql: ${TABLE}.order_base_total_refunded ;;
  }

  dimension: order_billing_address_city {
    type: string
    sql: ${TABLE}.order_billing_address_city ;;
  }

  dimension: order_billing_address_country_id {
    type: string
    sql: ${TABLE}.order_billing_address_country_id ;;
  }

  dimension: order_billing_address_firstname {
    type: string
    sql: ${TABLE}.order_billing_address_firstname ;;
  }

  dimension: order_billing_address_id {
    type: number
    sql: ${TABLE}.order_billing_address_id ;;
  }

  dimension: order_billing_address_lastname {
    type: string
    sql: ${TABLE}.order_billing_address_lastname ;;
  }

  dimension: order_billing_address_postcode {
    type: string
    sql: ${TABLE}.order_billing_address_postcode ;;
  }

  dimension: order_billing_address_region {
    type: string
    sql: ${TABLE}.order_billing_address_region ;;
  }

  dimension: order_billing_address_street {
    type: string
    sql: ${TABLE}.order_billing_address_street ;;
  }

  dimension: order_browser {
    type: string
    sql: ${TABLE}.order_browser ;;
  }

  dimension: order_channel_description {
    type: string
    sql: ${TABLE}.order_channel_description ;;
  }

  dimension: order_channel_name {
    type: string
    sql: ${TABLE}.order_channel_name ;;
  }

  dimension: order_channel_prefix {
    type: string
    sql: ${TABLE}.order_channel_prefix ;;
  }

  dimension: order_code {
    type: string
    sql: ${TABLE}.order_code ;;
  }

  dimension: order_coupon_code {
    type: string
    sql: ${TABLE}.order_coupon_code ;;
  }

  dimension: order_coupon_rule_name {
    type: string
    sql: ${TABLE}.order_coupon_rule_name ;;
  }

  dimension_group: order_created {
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
    sql: ${TABLE}.order_created_at ;;
  }

  dimension_group: order_cust_created {
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
    sql: ${TABLE}.order_cust_created_at ;;
  }

  dimension: order_cust_customer_group {
    type: string
    sql: ${TABLE}.order_cust_customer_group ;;
  }

  dimension: order_cust_email {
    type: string
    sql: ${TABLE}.order_cust_email ;;
  }

  dimension: order_cust_entity_id {
    type: number
    sql: ${TABLE}.order_cust_entity_id ;;
  }

  dimension: order_cust_group_id {
    type: number
    sql: ${TABLE}.order_cust_group_id ;;
  }

  dimension: order_cust_is_active {
    type: number
    sql: ${TABLE}.order_cust_is_active ;;
  }

  dimension_group: order_cust_updated {
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
    sql: ${TABLE}.order_cust_updated_at ;;
  }

  dimension: order_customer_email {
    type: string
    sql: ${TABLE}.order_customer_email ;;
  }

  dimension: order_customer_firstname {
    type: string
    sql: ${TABLE}.order_customer_firstname ;;
  }

  dimension: order_customer_group {
    type: string
    sql: ${TABLE}.order_customer_group ;;
  }

  dimension: order_customer_group_id {
    type: number
    sql: ${TABLE}.order_customer_group_id ;;
  }

  dimension: order_customer_id {
    type: number
    sql: ${TABLE}.order_customer_id ;;
  }

  dimension: order_customer_is_guest {
    type: number
    sql: ${TABLE}.order_customer_is_guest ;;
  }

  dimension: order_customer_lastname {
    type: string
    sql: ${TABLE}.order_customer_lastname ;;
  }

  dimension: order_device {
    type: string
    sql: ${TABLE}.order_device ;;
  }

  dimension: order_ext_order_id {
    type: string
    sql: ${TABLE}.order_ext_order_id ;;
  }

  dimension: order_giftcert_amount {
    type: number
    sql: ${TABLE}.order_giftcert_amount ;;
  }

  dimension: order_giftcert_code {
    type: string
    sql: ${TABLE}.order_giftcert_code ;;
  }

  dimension: order_giftee_email {
    type: string
    sql: ${TABLE}.order_giftee_email ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_increment_id {
    type: string
    sql: ${TABLE}.order_increment_id ;;
  }

  dimension: order_is_virtual {
    type: number
    sql: ${TABLE}.order_is_virtual ;;
  }

  dimension: order_items {
    type: string
    sql: ${TABLE}.order_items ;;
  }

  dimension: order_label {
    type: string
    sql: ${TABLE}.order_label ;;
  }

  dimension: order_order_type {
    type: string
    sql: ${TABLE}.order_order_type ;;
  }

  dimension: order_placement {
    type: string
    sql: ${TABLE}.order_placement ;;
  }

  dimension: order_product_line {
    type: string
    sql: ${TABLE}.order_product_line ;;
  }

  dimension: order_quote_id {
    type: number
    sql: ${TABLE}.order_quote_id ;;
  }

  dimension: order_referer {
    type: string
    sql: ${TABLE}.order_referer ;;
  }

  dimension: order_referrer {
    type: string
    sql: ${TABLE}.order_referrer ;;
  }

  dimension: order_remote_ip {
    type: string
    sql: ${TABLE}.order_remote_ip ;;
  }

  dimension: order_search_terms {
    type: string
    sql: ${TABLE}.order_search_terms ;;
  }

  dimension: order_shipping_address_city {
    type: string
    sql: ${TABLE}.order_shipping_address_city ;;
  }

  dimension: order_shipping_address_country_id {
    type: string
    sql: ${TABLE}.order_shipping_address_country_id ;;
  }

  dimension: order_shipping_address_firstname {
    type: string
    sql: ${TABLE}.order_shipping_address_firstname ;;
  }

  dimension: order_shipping_address_id {
    type: number
    sql: ${TABLE}.order_shipping_address_id ;;
  }

  dimension: order_shipping_address_lastname {
    type: string
    sql: ${TABLE}.order_shipping_address_lastname ;;
  }

  dimension: order_shipping_address_postcode {
    type: string
    sql: ${TABLE}.order_shipping_address_postcode ;;
  }

  dimension: order_shipping_address_region {
    type: string
    sql: ${TABLE}.order_shipping_address_region ;;
  }

  dimension: order_shipping_address_street {
    type: string
    sql: ${TABLE}.order_shipping_address_street ;;
  }

  dimension: order_shipping_method {
    type: string
    sql: ${TABLE}.order_shipping_method ;;
  }

  dimension: order_state {
    type: string
    sql: ${TABLE}.order_state ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.order_status ;;
  }

  dimension: order_store_id {
    type: number
    sql: ${TABLE}.order_store_id ;;
  }

  dimension: order_total_item_count {
    type: number
    sql: ${TABLE}.order_total_item_count ;;
  }

  dimension: order_uah {
    type: string
    sql: ${TABLE}.order_uah ;;
  }

  dimension_group: order_updated {
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
    sql: ${TABLE}.order_updated_at ;;
  }

  dimension: order_utm_campaign {
    type: string
    sql: ${TABLE}.order_utm_campaign ;;
  }

  dimension: order_utm_content {
    type: string
    sql: ${TABLE}.order_utm_content ;;
  }

  dimension: order_utm_medium {
    type: string
    sql: ${TABLE}.order_utm_medium ;;
  }

  dimension: order_utm_source {
    type: string
    sql: ${TABLE}.order_utm_source ;;
  }

  dimension: order_utm_term {
    type: string
    sql: ${TABLE}.order_utm_term ;;
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
      order_billing_address_lastname,
      order_shipping_address_lastname,
      order_customer_lastname,
      order_channel_name,
      order_customer_firstname,
      order_coupon_rule_name,
      context_library_name,
      order_billing_address_firstname,
      order_shipping_address_firstname
    ]
  }
}
