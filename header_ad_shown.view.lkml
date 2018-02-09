view: header_ad_shown {
  sql_table_name: javascript.header_ad_shown ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: ad_id {
    type: number
    sql: ${TABLE}.ad_id ;;
  }

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  dimension: context_campaign_c_20ampaign {
    type: string
    sql: ${TABLE}.context_campaign_c_20ampaign ;;
  }

  dimension: context_campaign_ca_20mpaign {
    type: string
    sql: ${TABLE}.context_campaign_ca_20mpaign ;;
  }

  dimension: context_campaign_cam_20paign {
    type: string
    sql: ${TABLE}.context_campaign_cam_20paign ;;
  }

  dimension: context_campaign_cam_e2_80_8bpaign {
    type: string
    sql: ${TABLE}.context_campaign_cam_e2_80_8bpaign ;;
  }

  dimension: context_campaign_camp_20aign {
    type: string
    sql: ${TABLE}.context_campaign_camp_20aign ;;
  }

  dimension: context_campaign_campaign_5c {
    type: string
    sql: ${TABLE}.context_campaign_campaign_5c ;;
  }

  dimension: context_campaign_campaingn {
    type: string
    sql: ${TABLE}.context_campaign_campaingn ;;
  }

  dimension: context_campaign_cnnmedium {
    type: string
    sql: ${TABLE}.context_campaign_cnnmedium ;;
  }

  dimension: context_campaign_content {
    type: string
    sql: ${TABLE}.context_campaign_content ;;
  }

  dimension: context_campaign_conupsent {
    type: string
    sql: ${TABLE}.context_campaign_conupsent ;;
  }

  dimension: context_campaign_cot {
    type: string
    sql: ${TABLE}.context_campaign_cot ;;
  }

  dimension: context_campaign_e2_80_8bcampaign {
    type: string
    sql: ${TABLE}.context_campaign_e2_80_8bcampaign ;;
  }

  dimension: context_campaign_e2_80_8bsource {
    type: string
    sql: ${TABLE}.context_campaign_e2_80_8bsource ;;
  }

  dimension: context_campaign_glowbug_activitycontent {
    type: string
    sql: ${TABLE}.context_campaign_glowbug_activitycontent ;;
  }

  dimension: context_campaign_m_e2_80_8bedium {
    type: string
    sql: ${TABLE}.context_campaign_m_e2_80_8bedium ;;
  }

  dimension: context_campaign_medifum {
    type: string
    sql: ${TABLE}.context_campaign_medifum ;;
  }

  dimension: context_campaign_medium {
    type: string
    sql: ${TABLE}.context_campaign_medium ;;
  }

  dimension: context_campaign_medium_5c {
    type: string
    sql: ${TABLE}.context_campaign_medium_5c ;;
  }

  dimension: context_campaign_mediumcnn {
    type: string
    sql: ${TABLE}.context_campaign_mediumcnn ;;
  }

  dimension: context_campaign_meium {
    type: string
    sql: ${TABLE}.context_campaign_meium ;;
  }

  dimension: context_campaign_name {
    type: string
    sql: ${TABLE}.context_campaign_name ;;
  }

  dimension: context_campaign_so_pinteresturce {
    type: string
    sql: ${TABLE}.context_campaign_so_pinteresturce ;;
  }

  dimension: context_campaign_sorce {
    type: string
    sql: ${TABLE}.context_campaign_sorce ;;
  }

  dimension: context_campaign_source {
    type: string
    sql: ${TABLE}.context_campaign_source ;;
  }

  dimension: context_campaign_source_5c {
    type: string
    sql: ${TABLE}.context_campaign_source_5c ;;
  }

  dimension: context_campaign_sourcork_20board_20squaresce {
    type: string
    sql: ${TABLE}.context_campaign_sourcork_20board_20squaresce ;;
  }

  dimension: context_campaign_sourctarget_20kailua_20black_20fridaye {
    type: string
    sql: ${TABLE}.context_campaign_sourctarget_20kailua_20black_20fridaye ;;
  }

  dimension: context_campaign_sourcyntonia_20brownce {
    type: string
    sql: ${TABLE}.context_campaign_sourcyntonia_20brownce ;;
  }

  dimension: context_campaign_sourpce {
    type: string
    sql: ${TABLE}.context_campaign_sourpce ;;
  }

  dimension: context_campaign_surce {
    type: string
    sql: ${TABLE}.context_campaign_surce ;;
  }

  dimension: context_campaign_term {
    type: string
    sql: ${TABLE}.context_campaign_term ;;
  }

  dimension: context_campaign_term0 {
    type: string
    sql: ${TABLE}.context_campaign_term0 ;;
  }

  dimension: context_campaign_term_5c {
    type: string
    sql: ${TABLE}.context_campaign_term_5c ;;
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

  dimension: context_user_agent {
    type: string
    sql: ${TABLE}.context_user_agent ;;
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
      users.context_campaign_name,
      users.id,
      users.context_library_name,
      users.name
    ]
  }
}
