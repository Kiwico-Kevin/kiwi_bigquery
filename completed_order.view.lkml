view: completed_order {
  sql_table_name: javascript.completed_order_view ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: affiliation {
    type: string
    sql: ${TABLE}.affiliation ;;
  }

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  dimension: context_ip {
    type: string
    sql: ${TABLE}.context_ip ;;
  }

#   dimension: context_library_name {
#     type: string
#     sql: ${TABLE}.context_library_name ;;
#   }
#
#   dimension: context_library_version {
#     type: string
#     sql: ${TABLE}.context_library_version ;;
#   }

  dimension: context_page_path {
    type: string
    sql: ${TABLE}.context_page_path ;;
  }

  dimension: context_page_referrer {
    type: string
    sql: ${TABLE}.context_page_referrer ;;
  }

  dimension: context_page_title {
    type: string
    sql: ${TABLE}.context_page_title ;;
  }

  dimension: context_page_url {
    type: string
    sql: ${TABLE}.context_page_url ;;
  }

  dimension: context_user_agent {
    type: string
    sql: ${TABLE}.context_user_agent ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: event_text {
    type: string
    sql: ${TABLE}.event_text ;;
  }

#   dimension_group: loaded {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.loaded_at ;;
#   }

  measure: oldrevenue {
    type: sum_distinct
    sql: ${TABLE}.oldrevenue ;;
  }

#   dimension: order_id {
#     type: string
#     sql: ${TABLE}.order_id ;;
#   }

#   dimension_group: original_timestamp {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.original_timestamp ;;
#   }

  dimension: products {
    type: string
    sql: ${TABLE}.products ;;
  }

#   dimension_group: received {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.received_at ;;
#   }

  measure: revenue {
    type: sum_distinct
    value_format: "$#,##0.00"
    sql: ${TABLE}.revenue ;;
  }

#   dimension_group: sent {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.sent_at ;;
#   }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  measure: shipping {
    type: sum_distinct
    value_format: "$#,##0.00"
    sql: ${TABLE}.shipping ;;
  }

  measure: tax {
    type: sum_distinct
    value_format: "$#,##0.00"
    sql: ${TABLE}.tax ;;
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

  measure: total {
    type: sum_distinct
    value_format: "$#,##0.00"
    sql: ${TABLE}.total ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

#   dimension_group: uuid_ts {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.uuid_ts ;;
#   }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: distinct_orders {
    type: count_distinct
    sql: ${order_id} ;;
  }

  dimension: order_id{
    sql: CAST(JSON_EXTRACT(${TABLE}.order_info, '$[0].order_id')AS STRING) ;;
    group_label: "Order Info"
#     label: "Description"
  }

  dimension: order_type{
    sql: CAST(JSON_EXTRACT(${TABLE}.order_info, '$[0].order_type')AS STRING) ;;
    group_label: "Order Info"
  }

  dimension: checkout_method{
    sql: CAST(JSON_EXTRACT(${TABLE}.order_info, '$[0].checkout_method')AS STRING) ;;
    group_label: "Order Info"
  }

  dimension: gift_message{
    sql: CAST(JSON_EXTRACT(${TABLE}.order_info, '$[0].gift_message')AS STRING) ;;
    group_label: "Order Info"
  }
  dimension: first_crate_to_me{
    sql: CAST(JSON_EXTRACT(${TABLE}.order_info, '$[0].first_crate_to_me')AS STRING) ;;
    group_label: "Order Info"
  }

  dimension: sku{
    sql: CAST(JSON_EXTRACT(${TABLE}.cart_items, '$[0].sku')AS STRING) ;;
    group_label: "First Item of Order Info"
  }

  dimension: category{
    sql: CAST(JSON_EXTRACT(${TABLE}.cart_items, '$[0].category')AS STRING) ;;
    group_label: "First Item of Order Info"
  }

  dimension: store{
    sql: CAST(JSON_EXTRACT(${TABLE}.cart_items, '$[0].store')AS STRING) ;;
    group_label: "First Item of Order Info"
  }

  dimension: sub_length{
    sql: CAST(JSON_EXTRACT(${TABLE}.cart_items, '$[0].sub_length')AS STRING) ;;
    group_label: "First Item of Order Info"
  }

  dimension: sub_info{
    sql: CAST(JSON_EXTRACT(${TABLE}.cart_items, '$[0].sub_info')AS STRING) ;;
    group_label: "First Item of Order Info"
  }

  dimension: description{
    sql: CAST(JSON_EXTRACT(${TABLE}.cart_items, '$[0].description')AS STRING) ;;
    group_label: "First Item of Order Info"
  }

  dimension: is_gift{
    sql: CAST(JSON_EXTRACT(${TABLE}.cart_items, '$[0].is_gift')AS STRING) ;;
    group_label: "First Item of Order Info"
  }

  dimension: shipping_country{
    sql: CAST(JSON_EXTRACT(${TABLE}.address_info, '$[0].shipping_country')AS STRING) ;;
    group_label: "Shipping Info"
  }

  dimension: shipping_state{
    sql: CAST(JSON_EXTRACT(${TABLE}.address_info, '$[0].shipping_state')AS STRING) ;;
    group_label: "Shipping Info"
  }

  dimension: shipping_method{
    sql: CAST(JSON_EXTRACT(${TABLE}.shipping_info, '$[0].shipping_method')AS STRING) ;;
    group_label: "Shipping Info"
  }

  dimension: payment_method{
    sql: CAST(JSON_EXTRACT(${TABLE}.payment_info, '$[0].payment_method')AS STRING) ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      users.context_campaign_name,
      users.id,
      users.context_library_name,
      users.name
    ]
  }
}
