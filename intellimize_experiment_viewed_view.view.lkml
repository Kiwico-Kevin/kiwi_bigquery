view: intellimize_experiment_viewed_view {
  sql_table_name: javascript.intellimize_experiment_viewed_view ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  dimension: branding_and_navigation {
    type: string
    sql: ${TABLE}.branding_and_navigation ;;
  }

  dimension: chat_appearance_timing {
    type: string
    sql: ${TABLE}.chat_appearance_timing ;;
  }

  dimension: chat_employee_image {
    type: string
    sql: ${TABLE}.chat_employee_image ;;
  }

  dimension: chat_text_after_opening {
    type: string
    sql: ${TABLE}.chat_text_after_opening ;;
  }

  dimension: context_campaign_content {
    type: string
    sql: ${TABLE}.context_campaign_content ;;
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

  dimension: headline_eligible_utm_campaigns {
    type: string
    sql: ${TABLE}.headline_eligible_utm_campaigns ;;
  }

  dimension: hero_cta_text_eligible_utm_campaigns {
    type: string
    sql: ${TABLE}.hero_cta_text_eligible_utm_campaigns ;;
  }

  dimension: hero_image {
    type: string
    sql: ${TABLE}.hero_image ;;
  }

  dimension: hero_video_eligible_utm_campaigns_as_of_12_22_17 {
    type: string
    sql: ${TABLE}.hero_video_eligible_utm_campaigns_as_of_12_22_17 ;;
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

  dimension: module_reorder_and_font_size_changes {
    type: string
    sql: ${TABLE}.module_reorder_and_font_size_changes ;;
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

  dimension: pricing_widget_text {
    type: string
    sql: ${TABLE}.pricing_widget_text ;;
  }

  dimension: promo_ribbon_font_and_background_colors_at_top_of_the_page {
    type: string
    sql: ${TABLE}.promo_ribbon_font_and_background_colors_at_top_of_the_page ;;
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

  dimension: shop_now_order_of_product_length {
    type: string
    sql: ${TABLE}.shop_now_order_of_product_length ;;
  }

  dimension: shop_now_personalize_it_child_recipient_name_labels {
    type: string
    sql: ${TABLE}.shop_now_personalize_it_child_recipient_name_labels ;;
  }

  dimension: shop_now_subscription_length_most_popular_flag_placement {
    type: string
    sql: ${TABLE}.shop_now_subscription_length_most_popular_flag_placement ;;
  }

  dimension: subheadline_eligible_utm_campaigns {
    type: string
    sql: ${TABLE}.subheadline_eligible_utm_campaigns ;;
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

  dimension: why_family_and_how_it_works_modules {
    type: string
    sql: ${TABLE}.why_family_and_how_it_works_modules ;;
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
