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
    group_label: "UTM Variables"
  }

  dimension: utm_adset {
    type: string
    sql: ${TABLE}.context_campaign_adset ;;
    group_label: "UTM Variables"
  }

  dimension: utm_content {
    type: string
    sql: ${TABLE}.context_campaign_content ;;
    group_label: "UTM Variables"
  }

#   dimension: context_campaign_expid {
#     type: string
#     sql: ${TABLE}.context_campaign_expid ;;
#   }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}.context_campaign_medium ;;
    group_label: "UTM Variables"
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.context_campaign_name ;;
    group_label: "UTM Variables"
  }

  dimension: utm_placement {
    type: string
    sql: ${TABLE}.context_campaign_placement ;;
    group_label: "UTM Variables"
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.context_campaign_source ;;
    group_label: "UTM Variables"
  }

  dimension: utm_term {
    type: string
    sql: ${TABLE}.context_campaign_term ;;
    group_label: "UTM Variables"
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

  dimension: user_agent {
    type: string
    sql: ${TABLE}.context_user_agent ;;
  }

  dimension: browser {
    sql:
      CASE
        WHEN ${user_agent} LIKE '%Firefox/%' THEN 'Firefox'
        WHEN ${user_agent} LIKE '%Chrome/%' OR ${user_agent} LIKE '%CriOS%' THEN 'Chrome'
        WHEN ${user_agent} LIKE '%MSIE %' THEN 'IE'
        WHEN ${user_agent} LIKE '%MSIE+%' THEN 'IE'
        WHEN ${user_agent} LIKE '%Trident%' THEN 'IE'
        WHEN ${user_agent} LIKE '%iPhone%' THEN 'iPhone Safari'
        WHEN ${user_agent} LIKE '%iPad%' THEN 'iPad Safari'
        WHEN ${user_agent} LIKE '%Opera%' THEN 'Opera'
        WHEN ${user_agent} LIKE '%BlackBerry%' AND ${user_agent} LIKE '%Version/%' THEN 'BlackBerry WebKit'
        WHEN ${user_agent} LIKE '%BlackBerry%' THEN 'BlackBerry'
        WHEN ${user_agent} LIKE '%Android%' THEN 'Android'
        WHEN ${user_agent} LIKE '%Safari%' THEN 'Safari'
        WHEN ${user_agent} LIKE '%bot%' THEN 'Bot'
        WHEN ${user_agent} LIKE '%http://%' THEN 'Bot'
        WHEN ${user_agent} LIKE '%www.%' THEN 'Bot'
        WHEN ${user_agent} LIKE '%Wget%' THEN 'Bot'
        WHEN ${user_agent} LIKE '%curl%' THEN 'Bot'
        WHEN ${user_agent} LIKE '%urllib%' THEN 'Bot'
        ELSE 'Unknown'
      END;;
  }

  dimension: device {
    sql:
      CASE
        WHEN ${user_agent} LIKE '%iPad%' THEN 'iPad'
        WHEN ${user_agent} LIKE '%iPhone%' THEN 'iPhone'
        WHEN ${user_agent} LIKE '%Android%' THEN 'Android'
        WHEN ${user_agent} LIKE '%Mac OS X%' THEN 'OS X'
        WHEN ${user_agent} LIKE '%X11%' THEN 'Linux'
        WHEN ${user_agent} LIKE '%Windows%' THEN 'Windows'
        ELSE 'Other'
    END;;
  }

  dimension: device_group {
    sql:
      CASE
        WHEN ${device} = 'iPhone' or ${device} = 'Android' THEN 'Mobile'
        WHEN ${device} = 'OS X' or ${device} = 'Linux' or ${device} = 'Windows' THEN 'Desktop'
        WHEN ${device} = 'iPad' THEN 'Tablet'
        ELSE 'Other'
    END;;
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

#   measure: count {
#     type: count
#     drill_fields: [id, variation_name, test_name]
#   }
  measure: distinct_users {
    type: count_distinct
    sql: ${anonymous_id} ;;
  }

}
