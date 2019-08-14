view: ab_tasty_view {
  sql_table_name: javascript.ab_tasty_view ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

#   dimension: context_amp_id {
#     type: string
#     sql: ${TABLE}.context_amp_id ;;
#   }

  dimension: utm_ad {
    type: string
    sql: ${TABLE}.context_campaign_ad ;;
  }

  dimension: utm_adset {
    type: string
    sql: ${TABLE}.context_campaign_adset ;;
  }

  dimension: utm_content {
    type: string
    sql: ${TABLE}.context_campaign_content ;;
  }

#   dimension: context_campaign_expid {
#     type: string
#     sql: ${TABLE}.context_campaign_expid ;;
#   }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}.context_campaign_medium ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.context_campaign_name ;;
  }

  dimension: utm_placement {
    type: string
    sql: ${TABLE}.context_campaign_placement ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.context_campaign_source ;;
  }

  dimension: utm_term {
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

  dimension: page_path {
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

  dimension: context_page_url {
    type: string
    sql: ${TABLE}.context_page_url ;;
  }

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
#
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

  dimension: test_id {
    type: number
    sql: ${TABLE}.test_id ;;
  }

  dimension: test_name {
    type: string
    sql: ${TABLE}.test_name ;;
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

  dimension: variation_id {
    type: number
    sql: ${TABLE}.variation_id ;;
  }

  dimension: variation_name {
    type: string
    sql: ${TABLE}.variation_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, variation_name, test_name]
  }
}
