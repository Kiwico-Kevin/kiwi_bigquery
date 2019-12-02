view: kiwi_checkout_session_pageviews {
  sql_table_name: javascript.kiwi_checkout_session_pageviews ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  dimension: context_campaign_3_a_2_f_2_fwww_tinkercrate_com_2_fjoin_3_futm_source {
    type: string
    sql: ${TABLE}.context_campaign_3_a_2_f_2_fwww_tinkercrate_com_2_fjoin_3_futm_source ;;
  }

  dimension: context_campaign_3_futm_source {
    type: string
    sql: ${TABLE}.context_campaign_3_futm_source ;;
  }

  dimension: context_campaign_caampaign {
    type: string
    sql: ${TABLE}.context_campaign_caampaign ;;
  }

  dimension: context_campaign_camp_20aign {
    type: string
    sql: ${TABLE}.context_campaign_camp_20aign ;;
  }

  dimension: context_campaign_camp_e2_80_8baign {
    type: string
    sql: ${TABLE}.context_campaign_camp_e2_80_8baign ;;
  }

  dimension: context_campaign_campa_20ign {
    type: string
    sql: ${TABLE}.context_campaign_campa_20ign ;;
  }

  dimension: context_campaign_campai_20gn {
    type: string
    sql: ${TABLE}.context_campaign_campai_20gn ;;
  }

  dimension: context_campaign_campaignn {
    type: string
    sql: ${TABLE}.context_campaign_campaignn ;;
  }

  dimension: context_campaign_campaigzillown {
    type: string
    sql: ${TABLE}.context_campaign_campaigzillown ;;
  }

  dimension: context_campaign_content {
    type: string
    sql: ${TABLE}.context_campaign_content ;;
  }

  dimension: context_campaign_e2_80_8bcampaign {
    type: string
    sql: ${TABLE}.context_campaign_e2_80_8bcampaign ;;
  }

  dimension: context_campaign_e2_80_8bmedium {
    type: string
    sql: ${TABLE}.context_campaign_e2_80_8bmedium ;;
  }

  dimension: context_campaign_e2_80_8bsource {
    type: string
    sql: ${TABLE}.context_campaign_e2_80_8bsource ;;
  }

  dimension: context_campaign_m_e2_80_8bedium {
    type: string
    sql: ${TABLE}.context_campaign_m_e2_80_8bedium ;;
  }

  dimension: context_campaign_medi_e2_80_8bum {
    type: string
    sql: ${TABLE}.context_campaign_medi_e2_80_8bum ;;
  }

  dimension: context_campaign_medifaum {
    type: string
    sql: ${TABLE}.context_campaign_medifaum ;;
  }

  dimension: context_campaign_medium {
    type: string
    sql: ${TABLE}.context_campaign_medium ;;
  }

  dimension: context_campaign_mediumcnn {
    type: string
    sql: ${TABLE}.context_campaign_mediumcnn ;;
  }

  dimension: context_campaign_meradio_netdium {
    type: string
    sql: ${TABLE}.context_campaign_meradio_netdium ;;
  }

  dimension: context_campaign_mountaincraftfdays {
    type: string
    sql: ${TABLE}.context_campaign_mountaincraftfdays ;;
  }

  dimension: context_campaign_name {
    type: string
    sql: ${TABLE}.context_campaign_name ;;
  }

  dimension: context_campaign_s_e2_80_8bource {
    type: string
    sql: ${TABLE}.context_campaign_s_e2_80_8bource ;;
  }

  dimension: context_campaign_source {
    type: string
    sql: ${TABLE}.context_campaign_source ;;
  }

  dimension: context_campaign_src {
    type: string
    sql: ${TABLE}.context_campaign_src ;;
  }

  dimension: context_campaign_term {
    type: string
    sql: ${TABLE}.context_campaign_term ;;
  }

  dimension: context_campaign_utm_campaign {
    type: string
    sql: ${TABLE}.context_campaign_utm_campaign ;;
  }

  dimension: context_campaign_utm_content {
    type: string
    sql: ${TABLE}.context_campaign_utm_content ;;
  }

  dimension: context_campaign_utm_medium {
    type: string
    sql: ${TABLE}.context_campaign_utm_medium ;;
  }

  dimension: context_campaign_utm_source {
    type: string
    sql: ${TABLE}.context_campaign_utm_source ;;
  }

  dimension: context_ip {
    type: string
    sql: ${TABLE}.context_ip ;;
  }

  dimension: context_library_name {
    type: string
    sql: ${TABLE}.context_library_name ;;
  }

  dimension: context_library_version {
    type: string
    sql: ${TABLE}.context_library_version ;;
  }

  dimension: context_page_path {
    type: string
    sql: ${TABLE}.context_page_path ;;
  }

  dimension: context_page_referrer {
    type: string
    sql: ${TABLE}.context_page_referrer ;;
  }

  dimension: context_page_search {
    type: string
    sql: ${TABLE}.context_page_search ;;
  }

  dimension: context_page_title {
    type: string
    sql: ${TABLE}.context_page_title ;;
  }

  dimension: context_page_url {
    type: string
    sql: ${TABLE}.context_page_url ;;
  }

  dimension: context_prxuser_agent {
    type: string
    sql: ${TABLE}.context_prxuser_agent ;;
  }

  dimension: context_user_agent {
    type: string
    sql: ${TABLE}.context_user_agent ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.customer ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: group_id {
    type: string
    sql: ${TABLE}.group_id ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
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

  dimension: page {
    type: string
    sql: ${TABLE}.page ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
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

  dimension: referrer {
    type: string
    sql: ${TABLE}.referrer ;;
  }

  dimension: search {
    type: string
    sql: ${TABLE}.search ;;
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

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
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

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
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
      context_campaign_name,
      context_library_name,
      first_name,
      last_name,
      users.context_campaign_name,
      users.id,
      users.context_library_name,
      users.name
    ]
  }
}
