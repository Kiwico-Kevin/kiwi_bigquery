view: users {
  sql_table_name: javascript.users ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
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

  dimension: context_campaign_sairource {
    type: string
    sql: ${TABLE}.context_campaign_sairource ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: experiment_add_hashtag_to_ugc_section {
    type: string
    sql: ${TABLE}.experiment_add_hashtag_to_ugc_section ;;
  }

  dimension: experiment_birthday_hero {
    type: string
    sql: ${TABLE}.experiment_birthday_hero ;;
  }

  dimension: experiment_birthday_promo_refer_a_friend {
    type: string
    sql: ${TABLE}.experiment_birthday_promo_refer_a_friend ;;
  }

  dimension: experiment_black_friday_lightbox_experiment {
    type: string
    sql: ${TABLE}.experiment_black_friday_lightbox_experiment ;;
  }

  dimension: experiment_black_friday_lightbox_experiment_1 {
    type: string
    sql: ${TABLE}.experiment_black_friday_lightbox_experiment_1 ;;
  }

  dimension: experiment_checkout_4_legal_copy_placement {
    type: string
    sql: ${TABLE}.experiment_checkout_4_legal_copy_placement ;;
  }

  dimension: experiment_coupon_after_email_for_lps {
    type: string
    sql: ${TABLE}.experiment_coupon_after_email_for_lps ;;
  }

  dimension: experiment_educational_home_page_hero_copy {
    type: string
    sql: ${TABLE}.experiment_educational_home_page_hero_copy ;;
  }

  dimension: experiment_educational_home_page_hero_copy_fixed {
    type: string
    sql: ${TABLE}.experiment_educational_home_page_hero_copy_fixed ;;
  }

  dimension: experiment_hide_save_price_in_purchase_widget {
    type: string
    sql: ${TABLE}.experiment_hide_save_price_in_purchase_widget ;;
  }

  dimension: experiment_home_page_background_video {
    type: string
    sql: ${TABLE}.experiment_home_page_background_video ;;
  }

  dimension: experiment_home_page_background_video_1 {
    type: string
    sql: ${TABLE}.experiment_home_page_background_video_1 ;;
  }

  dimension: experiment_home_page_background_video_new_visitor_desktop {
    type: string
    sql: ${TABLE}.experiment_home_page_background_video_new_visitor_desktop ;;
  }

  dimension: experiment_home_page_tv_spot_test {
    type: string
    sql: ${TABLE}.experiment_home_page_tv_spot_test ;;
  }

  dimension: experiment_no_image_lightbox_test {
    type: string
    sql: ${TABLE}.experiment_no_image_lightbox_test ;;
  }

  dimension: experiment_no_image_lightbox_test_friends_and_family_flash_sale {
    type: string
    sql: ${TABLE}.experiment_no_image_lightbox_test_friends_and_family_flash_sale ;;
  }

  dimension: experiment_order_success_hide_25_off_another_subscription_banner {
    type: string
    sql: ${TABLE}.experiment_order_success_hide_25_off_another_subscription_banner ;;
  }

  dimension: experiment_recommendation_quiz {
    type: string
    sql: ${TABLE}.experiment_recommendation_quiz ;;
  }

  dimension: experiment_what_s_inside_v2_test {
    type: string
    sql: ${TABLE}.experiment_what_s_inside_v2_test ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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
      name,
      anonymous_id_user_id.count,
      attribution_tracking_data_2017_03_28.count,
      attribution_tracking_per_device_2017_03_27.count,
      product_purchases_mar2017.count,
      purchase_sessions_mar2017.count,
      purchase_sessions_table.count,
      success_pageview_data_view.count,
      added_product.count,
      added_product_view.count,
      aliases.count,
      aliases_view.count,
      are_you_sure_form.count,
      are_you_sure_form_view.count,
      author_index.count,
      author_index_view.count,
      cancel_ask_for_additional_can_t_afford_info.count,
      cancel_ask_for_additional_can_t_afford_info_view.count,
      cancel_link_clicked.count,
      cancel_link_clicked_view.count,
      cancel_popup.count,
      cancel_popup_view.count,
      cancel_show_50_off_offer.count,
      cancel_show_50_off_offer_view.count,
      cancel_show_brand_switch_option_not_interested.count,
      cancel_show_brand_switch_option_not_interested_view.count,
      cancel_show_brand_switch_option_too_old.count,
      cancel_show_brand_switch_option_too_old_view.count,
      cancel_show_brand_switch_option_too_young.count,
      cancel_show_brand_switch_option_too_young_view.count,
      cancel_show_every_other_month_offer.count,
      cancel_show_every_other_month_offer_view.count,
      cancel_show_extension_offer.count,
      cancel_show_extension_offer_view.count,
      cancel_show_not_satisfied_modal.count,
      cancel_show_not_satisfied_modal_view.count,
      cancel_subscription.count,
      cancel_subscription_view.count,
      channel.count,
      channel_view.count,
      checkout_billing.count,
      checkout_billing_information.count,
      checkout_billing_information_view.count,
      checkout_billing_view.count,
      checkout_contact_information.count,
      checkout_contact_information_view.count,
      checkout_session_error_403.count,
      checkout_session_error_403_view.count,
      checkout_shipping.count,
      checkout_shipping_view.count,
      click_pause.count,
      click_pause_view.count,
      cloudsponge_checkout_raf.count,
      cloudsponge_checkout_raf_init.count,
      cloudsponge_checkout_raf_init_view.count,
      cloudsponge_checkout_raf_view.count,
      cloudsponge_explore_raf.count,
      cloudsponge_explore_raf_init.count,
      cloudsponge_explore_raf_init_view.count,
      cloudsponge_explore_raf_view.count,
      cloudsponge_referral_raf.count,
      cloudsponge_referral_raf_init.count,
      cloudsponge_referral_raf_init_view.count,
      cloudsponge_referral_raf_view.count,
      cloudsponge_sendcard_raf_init.count,
      cloudsponge_sendcard_raf_init_view.count,
      completed_order.count,
      completed_order_view.count,
      contact_us_modal.count,
      contact_us_modal_view.count,
      continue_to_cancel.count,
      continue_to_cancel_view.count,
      cs_done.count,
      cs_done_view.count,
      cs_launch.count,
      cs_launch_view.count,
      customer_completed_cancel_from_cancel_popup.count,
      customer_completed_cancel_from_cancel_popup_view.count,
      customer_completed_pause_from_pause_popup.count,
      customer_completed_pause_from_pause_popup_view.count,
      diy_ad_click.count,
      diy_ad_click_view.count,
      diy_share_email.count,
      diy_share_email_view.count,
      diy_share_pinterest.count,
      diy_share_pinterest_view.count,
      diy_share_print.count,
      diy_share_print_view.count,
      email_send_checkout_raf.count,
      email_send_checkout_raf_view.count,
      email_send_explore_raf.count,
      email_send_explore_raf_view.count,
      email_send_getcard_raf.count,
      email_send_getcard_raf_view.count,
      email_send_referral_raf.count,
      email_send_referral_raf_view.count,
      email_send_sendcard_raf.count,
      email_send_sendcard_raf_view.count,
      email_submitted.count,
      email_submitted_view.count,
      experiment_viewed.count,
      experiment_viewed_view.count,
      fb_messenger_checkout_raf_init.count,
      fb_messenger_checkout_raf_init_view.count,
      fb_messenger_explore_raf_init.count,
      fb_messenger_explore_raf_init_view.count,
      fb_messenger_referral_raf_init.count,
      fb_messenger_referral_raf_init_view.count,
      fb_post_checkout_raf.count,
      fb_post_checkout_raf_init.count,
      fb_post_checkout_raf_init_view.count,
      fb_post_checkout_raf_view.count,
      fb_post_explore_raf.count,
      fb_post_explore_raf_init.count,
      fb_post_explore_raf_init_view.count,
      fb_post_explore_raf_view.count,
      fb_post_getcard_raf_init.count,
      fb_post_getcard_raf_init_view.count,
      fb_post_newsletter_signup.count,
      fb_post_newsletter_signup_view.count,
      fb_post_referral_raf.count,
      fb_post_referral_raf_init.count,
      fb_post_referral_raf_init_view.count,
      fb_post_referral_raf_view.count,
      fb_post_sendcard_raf.count,
      fb_post_sendcard_raf_init.count,
      fb_post_sendcard_raf_init_view.count,
      fb_post_sendcard_raf_view.count,
      fb_post_survey_raf.count,
      fb_post_survey_raf_init.count,
      fb_post_survey_raf_init_view.count,
      fb_post_survey_raf_view.count,
      final_cancel_link_clicked.count,
      final_cancel_link_clicked_view.count,
      header_ad_cta_click.count,
      header_ad_cta_click_view.count,
      header_ad_dismissed.count,
      header_ad_dismissed_view.count,
      header_ad_shown.count,
      header_ad_shown_view.count,
      help_us_improve_form.count,
      help_us_improve_form_view.count,
      identifies.count,
      identifies_view.count,
      intellimize_experiment_viewed.count,
      intellimize_experiment_viewed_view.count,
      kiwi_checkout_session_pageviews.count,
      kiwi_completed_orders_mar2017_view.count,
      landing_page_action.count,
      landing_page_action_view.count,
      lightbox_diy_interstitial_close.count,
      lightbox_diy_interstitial_close_view.count,
      lightbox_newsletter_close.count,
      lightbox_newsletter_close_view.count,
      lightbox_newsletter_not_shared.count,
      lightbox_newsletter_not_shared_view.count,
      lightbox_newsletter_signup.count,
      lightbox_newsletter_signup_share.count,
      lightbox_newsletter_signup_share_view.count,
      lightbox_newsletter_signup_view.count,
      lightbox_newsletter_tweet.count,
      lightbox_newsletter_tweet_view.count,
      lightbox_upsell_close.count,
      lightbox_upsell_close_view.count,
      lightbox_upsell_show.count,
      lightbox_upsell_show_view.count,
      lightbox_upsell_upgrade.count,
      lightbox_upsell_upgrade_view.count,
      list_index.count,
      list_index_view.count,
      our_story_modal.count,
      our_story_modal_view.count,
      our_vision_modal.count,
      pages.count,
      pages_view.count,
      pause_link_clicked.count,
      pause_link_clicked_view.count,
      pdp_add_success.count,
      pdp_add_success_view.count,
      pdp_breadcrumb.count,
      pdp_breadcrumb_view.count,
      pdp_product_suggestions.count,
      pdp_product_suggestions_view.count,
      pdp_shipping_info.count,
      pdp_shipping_info_view.count,
      pdp_social_share_email.count,
      pdp_social_share_email_view.count,
      pdp_social_share_facebook.count,
      pdp_social_share_facebook_view.count,
      pdp_social_share_pinterest.count,
      pdp_social_share_pinterest_view.count,
      pdp_subscription_upsell.count,
      pdp_subscription_upsell_view.count,
      pdp_view.count,
      pdp_view_view.count,
      punchcard_task_shown.count,
      punchcard_task_shown_view.count,
      purchase_widget_choose_brand.count,
      purchase_widget_choose_brand_view.count,
      purchase_widget_choose_line.count,
      purchase_widget_choose_line_view.count,
      purchase_widget_customize.count,
      purchase_widget_customize_view.count,
      purchase_widget_subscription_length.count,
      purchase_widget_subscription_length_view.count,
      quiz_age.count,
      quiz_age_0_2.count,
      quiz_age_0_2_view.count,
      quiz_age_3_4.count,
      quiz_age_3_4_view.count,
      quiz_age_5_8.count,
      quiz_age_5_8_view.count,
      quiz_age_9_16.count,
      quiz_age_9_16_view.count,
      quiz_age_view.count,
      quiz_art.count,
      quiz_art_view.count,
      quiz_challenge.count,
      quiz_challenge_view.count,
      quiz_difficult.count,
      quiz_difficult_view.count,
      quiz_prefer.count,
      quiz_prefer_view.count,
      quiz_science.count,
      quiz_science_view.count,
      recipe.count,
      recipe_index.count,
      recipe_index_view.count,
      recipe_view.count,
      renew_sticker_choose_offer_10_off.count,
      renew_sticker_choose_offer_10_off_view.count,
      renew_sticker_choose_offer_1_month_free.count,
      renew_sticker_choose_offer_1_month_free_view.count,
      renew_sticker_choose_offer_3_months_free.count,
      renew_sticker_choose_offer_3_months_free_view.count,
      renew_sticker_go_to_checkout_from_purchase_widget.count,
      renew_sticker_go_to_checkout_from_purchase_widget_view.count,
      renew_sticker_go_to_renew_or_extension_checkout_page.count,
      renew_sticker_go_to_renew_or_extension_checkout_page_view.count,
      renew_sticker_retrieve_sub_info.count,
      renew_sticker_retrieve_sub_info_view.count,
      renew_sticker_view_purchase_widget.count,
      renew_sticker_view_purchase_widget_view.count,
      shop_category_diy.count,
      shop_category_diy_home.count,
      shop_category_diy_view.count,
      shop_detail_breadcrumb.count,
      shop_detail_breadcrumb_view.count,
      shop_detail_get_subscription.count,
      shop_detail_get_subscription_view.count,
      shop_detail_product_thumbnail.count,
      shop_detail_product_thumbnail_view.count,
      shop_detail_shipping_info.count,
      shop_detail_shipping_info_view.count,
      shop_detail_view.count,
      shop_detail_view_view.count,
      shop_quickview_action.count,
      shop_quickview_action_view.count,
      show_credits_offer_for_not_cancelling.count,
      show_credits_offer_for_not_cancelling_view.count,
      show_lightbox.count,
      show_lightbox_view.count,
      sms_checkout_raf_init.count,
      sms_checkout_raf_init_view.count,
      sms_explore_raf_init.count,
      sms_explore_raf_init_view.count,
      sms_referral_raf_init.count,
      sms_referral_raf_init_view.count,
      sms_sendcard_raf_init.count,
      sms_sendcard_raf_init_view.count,
      tracks.count,
      tracks_view.count,
      tw_post_checkout_raf_init.count,
      tw_post_checkout_raf_init_view.count,
      tw_post_explore_raf_init.count,
      tw_post_explore_raf_init_view.count,
      tw_post_referral_raf_init.count,
      tw_post_referral_raf_init_view.count,
      view_order_summary.count,
      view_order_summary_view.count,
      view_reviews_modal.count,
      view_reviews_modal_view.count
    ]
  }
}
