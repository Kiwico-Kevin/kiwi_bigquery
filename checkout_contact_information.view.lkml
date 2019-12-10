view: checkout_contact_information {
  sql_table_name: javascript.checkout_contact_information_view ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  dimension: context_campaign_medium {
    type: string
    sql: ${TABLE}.context_campaign_medium ;;
  }

  dimension: context_campaign_name {
    type: string
    sql: ${TABLE}.context_campaign_name ;;
  }

  dimension: context_campaign_source {
    type: string
    sql: ${TABLE}.context_campaign_source ;;
  }

  dimension: context_campaign_term {
    type: string
    sql: ${TABLE}.context_campaign_term ;;
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

#   dimension: context_page_referrer {
#     type: string
#     sql: ${TABLE}.context_page_referrer ;;
#   }
#
#   dimension: context_page_search {
#     type: string
#     sql: ${TABLE}.context_page_search ;;
#   }
#
#   dimension: context_page_title {
#     type: string
#     sql: ${TABLE}.context_page_title ;;
#   }
#
#   dimension: context_page_url {
#     type: string
#     sql: ${TABLE}.context_page_url ;;
#   }

  dimension: context_user_agent {
    type: string
    sql: ${TABLE}.context_user_agent ;;
  }

#   dimension: event {
#     type: string
#     sql: ${TABLE}.event ;;
#   }
#
#   dimension: event_text {
#     type: string
#     sql: ${TABLE}.event_text ;;
#   }

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
#
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
#
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
#
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


  dimension: order_type{
    sql: CAST(JSON_EXTRACT(${TABLE}.order_info, '$[0].order_type')AS STRING) ;;
    group_label: "Order Info"
  }


  dimension: customer_id{
    sql: CAST(JSON_EXTRACT(${TABLE}.order_info, '$[0].customer_id')AS STRING) ;;
    group_label: "Order Info"
  }

  dimension: customer_group{
    sql: CAST(JSON_EXTRACT(${TABLE}.order_info, '$[0].customer_group')AS STRING) ;;
    group_label: "Order Info"
  }

  dimension: coupon_code{
    sql: CAST(JSON_EXTRACT(${TABLE}.order_info, '$[0].coupon_code')AS STRING) ;;
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


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: unique_users {
    type: count_distinct
    sql: ${anonymous_id} ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      context_campaign_name,
      users.context_campaign_name,
      users.id,
      users.context_library_name,
      users.name
    ]
  }
}
