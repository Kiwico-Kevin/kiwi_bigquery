view: subscribed {
  sql_table_name: iterable.subscribed ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  dimension: channel_id {
    type: number
    sql: ${TABLE}.channel_id ;;
  }

  dimension: channel_ids {
    type: string
    sql: ${TABLE}.channel_ids ;;
  }

  dimension: context_integration_name {
    type: string
    sql: ${TABLE}.context_integration_name ;;
  }

  dimension: context_integration_version {
    type: string
    sql: ${TABLE}.context_integration_version ;;
  }

  dimension: context_library_name {
    type: string
    sql: ${TABLE}.context_library_name ;;
  }

  dimension: context_library_version {
    type: string
    sql: ${TABLE}.context_library_version ;;
  }

  dimension: context_traits_email {
    type: string
    sql: ${TABLE}.context_traits_email ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: cs_child_firstname {
    type: string
    sql: ${TABLE}.cs_child_firstname ;;
  }

  dimension: cs_customer_firstname {
    type: string
    sql: ${TABLE}.cs_customer_firstname ;;
  }

  dimension: cs_ship {
    type: string
    sql: ${TABLE}.cs_ship ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: email_list_id {
    type: number
    sql: ${TABLE}.email_list_id ;;
  }

  dimension: email_list_ids {
    type: string
    sql: ${TABLE}.email_list_ids ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: event_text {
    type: string
    sql: ${TABLE}.event_text ;;
  }

  dimension_group: legacy_created {
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
    sql: ${TABLE}.legacy_created_at ;;
  }

  dimension: legacy_customer_id {
    type: string
    sql: ${TABLE}.legacy_customer_id ;;
  }

  dimension_group: legacy_last_click {
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
    sql: ${TABLE}.legacy_last_click ;;
  }


  dimension_group: legacy_last_open {
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
    sql: ${TABLE}.legacy_last_open ;;
  }

  dimension: legacy_lead_source {
    type: string
    sql: ${TABLE}.legacy_lead_source ;;
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

  dimension: nps_subscription_id {
    type: string
    sql: ${TABLE}.nps_subscription_id ;;
  }

  dimension: original_timestamp {
    type: string
    sql: ${TABLE}.original_timestamp ;;
  }

  dimension: profile_updated_at {
    type: string
    sql: ${TABLE}.profile_updated_at ;;
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

  dimension: signup_source {
    type: string
    sql: ${TABLE}.signup_source ;;
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

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.workflow_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, cs_child_firstname, context_integration_name, context_library_name, cs_customer_firstname]
  }
}
