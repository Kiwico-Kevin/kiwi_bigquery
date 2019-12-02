view: experiment_viewed {
  sql_table_name: javascript.experiment_viewed ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

#   dimension: branding_and_navigation {
#     type: string
#     sql: ${TABLE}.branding_and_navigation ;;
#   }
#
#   dimension: chat_employee_image {
#     type: string
#     sql: ${TABLE}.chat_employee_image ;;
#   }
#
#   dimension: context_campaign_3_futm_source {
#     type: string
#     sql: ${TABLE}.context_campaign_3_futm_source ;;
#   }
#
#   dimension: context_campaign_bingsource {
#     type: string
#     sql: ${TABLE}.context_campaign_bingsource ;;
#   }
#
#   dimension: context_campaign_ca_20mpaign {
#     type: string
#     sql: ${TABLE}.context_campaign_ca_20mpaign ;;
#   }
#
#   dimension: context_campaign_camp_20aign {
#     type: string
#     sql: ${TABLE}.context_campaign_camp_20aign ;;
#   }
#
#   dimension: context_campaign_campaigkiwi_cratesn {
#     type: string
#     sql: ${TABLE}.context_campaign_campaigkiwi_cratesn ;;
#   }
#
#   dimension: context_campaign_content {
#     type: string
#     sql: ${TABLE}.context_campaign_content ;;
#   }
#
#   dimension: context_campaign_conupsent {
#     type: string
#     sql: ${TABLE}.context_campaign_conupsent ;;
#   }
#
#   dimension: context_campaign_medifaum {
#     type: string
#     sql: ${TABLE}.context_campaign_medifaum ;;
#   }
#
#   dimension: context_campaign_medium {
#     type: string
#     sql: ${TABLE}.context_campaign_medium ;;
#   }
#
#   dimension: context_campaign_meradio_netdium {
#     type: string
#     sql: ${TABLE}.context_campaign_meradio_netdium ;;
#   }
#
#   dimension: context_campaign_name {
#     type: string
#     sql: ${TABLE}.context_campaign_name ;;
#   }
#
#   dimension: context_campaign_sairource {
#     type: string
#     sql: ${TABLE}.context_campaign_sairource ;;
#   }
#
#   dimension: context_campaign_so_pinteresturce {
#     type: string
#     sql: ${TABLE}.context_campaign_so_pinteresturce ;;
#   }
#
#   dimension: context_campaign_sorce {
#     type: string
#     sql: ${TABLE}.context_campaign_sorce ;;
#   }
#
#   dimension: context_campaign_source {
#     type: string
#     sql: ${TABLE}.context_campaign_source ;;
#   }
#
#   dimension: context_campaign_term {
#     type: string
#     sql: ${TABLE}.context_campaign_term ;;
#   }
#
#   dimension: context_campaign_utm_campaign {
#     type: string
#     sql: ${TABLE}.context_campaign_utm_campaign ;;
#   }
#
#   dimension: context_campaign_utm_content {
#     type: string
#     sql: ${TABLE}.context_campaign_utm_content ;;
#   }
#
#   dimension: context_campaign_utm_medium {
#     type: string
#     sql: ${TABLE}.context_campaign_utm_medium ;;
#   }
#
#   dimension: context_integration_name {
#     type: string
#     sql: ${TABLE}.context_integration_name ;;
#   }
#
#   dimension: context_integration_version {
#     type: string
#     sql: ${TABLE}.context_integration_version ;;
#   }
#
#   dimension: context_ip {
#     type: string
#     sql: ${TABLE}.context_ip ;;
#   }
#
#   dimension: context_library_name {
#     type: string
#     sql: ${TABLE}.context_library_name ;;
#   }
#
#   dimension: context_library_version {
#     type: string
#     sql: ${TABLE}.context_library_version ;;
#   }
#
#   dimension: context_page_path {
#     type: string
#     sql: ${TABLE}.context_page_path ;;
#   }
#
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
#
#   dimension: context_user_agent {
#     type: string
#     sql: ${TABLE}.context_user_agent ;;
#   }
#
#   dimension: event {
#     type: string
#     sql: ${TABLE}.event ;;
#   }
#
#   dimension: event_text {
#     type: string
#     sql: ${TABLE}.event_text ;;
#   }

  dimension: experiment_id {
    type: string
    sql: ${TABLE}.experiment_id ;;
  }

  dimension: experiment_name {
    type: string
    sql: ${TABLE}.experiment_name ;;
  }

#   dimension: headline_eligible_utm_campaigns {
#     type: string
#     sql: ${TABLE}.headline_eligible_utm_campaigns ;;
#   }
#
#   dimension: hero_cta_text_eligible_utm_campaigns {
#     type: string
#     sql: ${TABLE}.hero_cta_text_eligible_utm_campaigns ;;
#   }
#
#   dimension: hero_image {
#     type: string
#     sql: ${TABLE}.hero_image ;;
#   }
#
#   dimension: hero_video_eligible_utm_campaigns_as_of_12_22_17 {
#     type: string
#     sql: ${TABLE}.hero_video_eligible_utm_campaigns_as_of_12_22_17 ;;
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
#   dimension: module_reorder_and_font_size_changes {
#     type: string
#     sql: ${TABLE}.module_reorder_and_font_size_changes ;;
#   }
#
#   dimension: non_interaction {
#     type: number
#     sql: ${TABLE}.non_interaction ;;
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
#   dimension: pricing_widget_text {
#     type: string
#     sql: ${TABLE}.pricing_widget_text ;;
#   }
#
#   dimension: promo_ribbon_font_and_background_colors_at_top_of_the_page {
#     type: string
#     sql: ${TABLE}.promo_ribbon_font_and_background_colors_at_top_of_the_page ;;
#   }
#
#   dimension: promo_ribbon_font_size_at_top_of_the_page {
#     type: string
#     sql: ${TABLE}.promo_ribbon_font_size_at_top_of_the_page ;;
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
#   dimension: referrer {
#     type: string
#     sql: ${TABLE}.referrer ;;
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
#
#   dimension: shop_now_order_of_product_length {
#     type: string
#     sql: ${TABLE}.shop_now_order_of_product_length ;;
#   }
#
#   dimension: shop_now_personalize_it_child_recipient_name_labels {
#     type: string
#     sql: ${TABLE}.shop_now_personalize_it_child_recipient_name_labels ;;
#   }
#
#   dimension: shop_now_subscription_length_most_popular_flag_placement {
#     type: string
#     sql: ${TABLE}.shop_now_subscription_length_most_popular_flag_placement ;;
#   }
#
#   dimension: subheadline_eligible_utm_campaigns {
#     type: string
#     sql: ${TABLE}.subheadline_eligible_utm_campaigns ;;
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

  dimension: variation_id {
    type: string
    sql: ${TABLE}.variation_id ;;
  }

  dimension: variation_name {
    type: string
    sql: ${TABLE}.variation_name ;;
  }

#   dimension: why_family_and_how_it_works_modules {
#     type: string
#     sql: ${TABLE}.why_family_and_how_it_works_modules ;;
#   }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      experiment_name,
      variation_name,
      users.context_campaign_name,
      users.id,
      users.context_library_name,
      users.name
    ]
  }
}
