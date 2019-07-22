view: page_universal_id {
  derived_table: {
    sql: with Universal_mapping as (
      with realiases as (
        select distinct A.*
        from
        (
          SELECT
            anonymous_id AS alias,
            user_id AS next_alias
          FROM `kiwi-data-warehouse.javascript.tracks`
          UNION ALL
          SELECT
            previous_id,
            user_id
          FROM `kiwi-data-warehouse.javascript.aliases_view`
        )A
      )
      SELECT DISTINCT
      r0.alias
      , COALESCE(
              r16.next_alias
            , r16.alias
            , r15.alias
            , r14.alias
            , r13.alias
            , r12.alias
            , r11.alias
            , r10.alias
            , r9.alias
            , r8.alias
            , r7.alias
            , r6.alias
            , r5.alias
            , r4.alias
            , r3.alias
            , r2.alias
            , r1.alias
            , r0.alias
          ) AS universal_alias
          FROM realiases AS r0
          LEFT JOIN realiases r1 ON r0.next_alias = r1.alias
          LEFT JOIN realiases r2 ON r1.next_alias = r2.alias
          LEFT JOIN realiases r3 ON r2.next_alias = r3.alias
          LEFT JOIN realiases r4 ON r3.next_alias = r4.alias
          LEFT JOIN realiases r5 ON r4.next_alias = r5.alias
          LEFT JOIN realiases r6 ON r5.next_alias = r6.alias
          LEFT JOIN realiases r7 ON r6.next_alias = r7.alias
          LEFT JOIN realiases r8 ON r7.next_alias = r8.alias
          LEFT JOIN realiases r9 ON r8.next_alias = r9.alias
          LEFT JOIN realiases r10 ON r9.next_alias = r10.alias
          LEFT JOIN realiases r11 ON r10.next_alias = r11.alias
          LEFT JOIN realiases r12 ON r11.next_alias = r12.alias
          LEFT JOIN realiases r13 ON r12.next_alias = r13.alias
          LEFT JOIN realiases r14 ON r13.next_alias = r14.alias
          LEFT JOIN realiases r15 ON r14.next_alias = r15.alias
          LEFT JOIN realiases r16 ON r15.next_alias = r16.alias
      )
      SELECT Page.*,UNI.universal_alias
      FROM `kiwi-data-warehouse.javascript.pages` Page
      LEFT JOIN Universal_mapping UNI On Page.anonymous_id=UNI.alias
       ;;
    sql_trigger_value: SELECT CURRENT_DATE() ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: distinct_users {
    type: count_distinct
    sql: ${universal_alias} ;;
  }

  dimension_group: uuid_ts {
    type: time
    sql: ${TABLE}.uuid_ts ;;
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

  dimension_group: original_timestamp {
    type: time
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

  dimension_group: received_at {
    type: time
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

  dimension_group: sent_at {
    type: time
    sql: ${TABLE}.sent_at ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension_group: timestamp {
    type: time
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
    sql: ${TABLE}.user_id ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension_group: loaded_at {
    type: time
    sql: ${TABLE}.loaded_at ;;
  }

  dimension: context_campaign_campa_20ign {
    type: string
    sql: ${TABLE}.context_campaign_campa_20ign ;;
  }

  dimension: context_campaign_how_20to_20create_20privacy_20on_20condo_20bacony_20rulessource {
    type: string
    sql: ${TABLE}.context_campaign_how_20to_20create_20privacy_20on_20condo_20bacony_20rulessource ;;
  }

  dimension: all_products {
    type: string
    sql: ${TABLE}.all_products ;;
  }

  dimension: total_revenue {
    type: number
    sql: ${TABLE}.total_revenue ;;
  }

  dimension: context_campaign_cam_e2_80_8bpaign {
    type: string
    sql: ${TABLE}.context_campaign_cam_e2_80_8bpaign ;;
  }

  dimension: context_campaign_arvestcontent {
    type: string
    sql: ${TABLE}.context_campaign_arvestcontent ;;
  }

  dimension: context_campaign_bingsource {
    type: string
    sql: ${TABLE}.context_campaign_bingsource ;;
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

  dimension: context_campaign_camfaign {
    type: string
    sql: ${TABLE}.context_campaign_camfaign ;;
  }

  dimension: context_campaign_campaigkiwi_cratesn {
    type: string
    sql: ${TABLE}.context_campaign_campaigkiwi_cratesn ;;
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

  dimension: context_campaign_conupsent {
    type: string
    sql: ${TABLE}.context_campaign_conupsent ;;
  }

  dimension: context_campaign_cot {
    type: string
    sql: ${TABLE}.context_campaign_cot ;;
  }

  dimension: context_campaign_glowbug_activitycontent {
    type: string
    sql: ${TABLE}.context_campaign_glowbug_activitycontent ;;
  }

  dimension: context_campaign_m2x4_20bench_20plansedium {
    type: string
    sql: ${TABLE}.context_campaign_m2x4_20bench_20plansedium ;;
  }

  dimension: context_campaign_medifum {
    type: string
    sql: ${TABLE}.context_campaign_medifum ;;
  }

  dimension: context_campaign_medium_20_20_20_20 {
    type: string
    sql: ${TABLE}.context_campaign_medium_20_20_20_20 ;;
  }

  dimension: context_campaign_medium_5c {
    type: string
    sql: ${TABLE}.context_campaign_medium_5c ;;
  }

  dimension: context_campaign_meium {
    type: string
    sql: ${TABLE}.context_campaign_meium ;;
  }

  dimension: context_campaign_mraddish_20kidsedium {
    type: string
    sql: ${TABLE}.context_campaign_mraddish_20kidsedium ;;
  }

  dimension: context_campaign_sairource {
    type: string
    sql: ${TABLE}.context_campaign_sairource ;;
  }

  dimension: context_campaign_so_pinteresturce {
    type: string
    sql: ${TABLE}.context_campaign_so_pinteresturce ;;
  }

  dimension: context_campaign_sorce {
    type: string
    sql: ${TABLE}.context_campaign_sorce ;;
  }

  dimension: context_campaign_soufrce {
    type: string
    sql: ${TABLE}.context_campaign_soufrce ;;
  }

  dimension: context_campaign_source_5c {
    type: string
    sql: ${TABLE}.context_campaign_source_5c ;;
  }

  dimension: context_campaign_sourcork_20board_20squaresce {
    type: string
    sql: ${TABLE}.context_campaign_sourcork_20board_20squaresce ;;
  }

  dimension: context_campaign_sourcse {
    type: string
    sql: ${TABLE}.context_campaign_sourcse ;;
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

  dimension: context_campaign_term0 {
    type: string
    sql: ${TABLE}.context_campaign_term0 ;;
  }

  dimension: context_campaign_term_5c {
    type: string
    sql: ${TABLE}.context_campaign_term_5c ;;
  }

  dimension: context_campaign_therm {
    type: string
    sql: ${TABLE}.context_campaign_therm ;;
  }

  dimension: context_campaign_uyyy677icontent {
    type: string
    sql: ${TABLE}.context_campaign_uyyy677icontent ;;
  }

  dimension: context_campaign_20campaign {
    type: string
    sql: ${TABLE}.context_campaign_20campaign ;;
  }

  dimension: context_campaign_20medium {
    type: string
    sql: ${TABLE}.context_campaign_20medium ;;
  }

  dimension: context_campaign_mediuplane_20finderm {
    type: string
    sql: ${TABLE}.context_campaign_mediuplane_20finderm ;;
  }

  dimension: context_campaign_souamazon_comce {
    type: string
    sql: ${TABLE}.context_campaign_souamazon_comce ;;
  }

  dimension: context_campaign_camaign {
    type: string
    sql: ${TABLE}.context_campaign_camaign ;;
  }

  dimension: context_campaign_campaing {
    type: string
    sql: ${TABLE}.context_campaign_campaing ;;
  }

  dimension: context_campaign_contentsssss {
    type: string
    sql: ${TABLE}.context_campaign_contentsssss ;;
  }

  dimension: context_campaign_ad {
    type: string
    sql: ${TABLE}.context_campaign_ad ;;
  }

  dimension: context_campaign_adset {
    type: string
    sql: ${TABLE}.context_campaign_adset ;;
  }

  dimension: context_campaign_placement {
    type: string
    sql: ${TABLE}.context_campaign_placement ;;
  }

  dimension: context_campaign_expid {
    type: string
    sql: ${TABLE}.context_campaign_expid ;;
  }

  dimension: context_campaign_referrer {
    type: string
    sql: ${TABLE}.context_campaign_referrer ;;
  }

  dimension: context_campaign_yopkdgx_20i_comofg5dytcontent {
    type: string
    sql: ${TABLE}.context_campaign_yopkdgx_20i_comofg5dytcontent ;;
  }

  dimension: context_campaign_adf {
    type: string
    sql: ${TABLE}.context_campaign_adf ;;
  }

  dimension: context_campaign_campa_knitting_20_nutcaseign {
    type: string
    sql: ${TABLE}.context_campaign_campa_knitting_20_nutcaseign ;;
  }

  dimension: context_campaign_campa_knitting_20nutcaseign {
    type: string
    sql: ${TABLE}.context_campaign_campa_knitting_20nutcaseign ;;
  }

  dimension: context_campaign_ter_20m {
    type: string
    sql: ${TABLE}.context_campaign_ter_20m ;;
  }

  dimension: context_campaign_sourcev {
    type: string
    sql: ${TABLE}.context_campaign_sourcev ;;
  }

  dimension: context_amp_id {
    type: string
    sql: ${TABLE}.context_amp_id ;;
  }

  dimension: context_campaign_dhydehydrationcausedbycolonoscomedium {
    type: string
    sql: ${TABLE}.context_campaign_dhydehydrationcausedbycolonoscomedium ;;
  }

  dimension: context_campaign_sourbuild_20your_20own_20comuterce {
    type: string
    sql: ${TABLE}.context_campaign_sourbuild_20your_20own_20comuterce ;;
  }

  dimension: context_campaign_adse_20t {
    type: string
    sql: ${TABLE}.context_campaign_adse_20t ;;
  }

  dimension: context_campaign_souce {
    type: string
    sql: ${TABLE}.context_campaign_souce ;;
  }

  dimension: context_campaign_medi_kikcoum {
    type: string
    sql: ${TABLE}.context_campaign_medi_kikcoum ;;
  }

  dimension: context_campaign_preview {
    type: string
    sql: ${TABLE}.context_campaign_preview ;;
  }

  dimension: context_campaign_sou7_20y7yhurce {
    type: string
    sql: ${TABLE}.context_campaign_sou7_20y7yhurce ;;
  }

  dimension: context_campaign_medum {
    type: string
    sql: ${TABLE}.context_campaign_medum ;;
  }

  dimension: context_campaign_campaign {
    type: string
    sql: ${TABLE}.context_campaign_campaign ;;
  }

  dimension: context_campaign_expidkiwi_20 {
    type: string
    sql: ${TABLE}.context_campaign_expidkiwi_20 ;;
  }

  dimension: context_campaign_google_comexpid {
    type: string
    sql: ${TABLE}.context_campaign_google_comexpid ;;
  }

  dimension: __segment_dedupe_id {
    type: string
    sql: ${TABLE}.__segment_dedupe_id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: context_campaign_meamerican_20girl_20catalogium {
    type: string
    sql: ${TABLE}.context_campaign_meamerican_20girl_20catalogium ;;
  }

  dimension: context_campaign_mediuelron {
    type: string
    sql: ${TABLE}.context_campaign_mediuelron ;;
  }

  dimension: context_campaign_maedium {
    type: string
    sql: ${TABLE}.context_campaign_maedium ;;
  }

  dimension: context_campaign_sourse {
    type: string
    sql: ${TABLE}.context_campaign_sourse ;;
  }

  dimension: context_campaign_cammagiccabinpaign {
    type: string
    sql: ${TABLE}.context_campaign_cammagiccabinpaign ;;
  }

  dimension: context_campaign_sourc {
    type: string
    sql: ${TABLE}.context_campaign_sourc ;;
  }

  dimension: context_campaign_contenh6yu0w_utm_term {
    type: string
    sql: ${TABLE}.context_campaign_contenh6yu0w_utm_term ;;
  }

  dimension: context_campaign_campaigllln {
    type: string
    sql: ${TABLE}.context_campaign_campaigllln ;;
  }

  dimension: context_campaign_medium_boogie_20board_20magic_20sketch_20kid_27s_20activity_20travel_20set {
    type: string
    sql: ${TABLE}.context_campaign_medium_boogie_20board_20magic_20sketch_20kid_27s_20activity_20travel_20set ;;
  }

  dimension: context_campaign_campaamagn {
    type: string
    sql: ${TABLE}.context_campaign_campaamagn ;;
  }

  dimension: context_campaign_medibobby_20vans_20um {
    type: string
    sql: ${TABLE}.context_campaign_medibobby_20vans_20um ;;
  }

  dimension: context_campaign_campagn {
    type: string
    sql: ${TABLE}.context_campaign_campagn ;;
  }

  dimension: context_campaign_sourcwords_20ending_20on_20an {
    type: string
    sql: ${TABLE}.context_campaign_sourcwords_20ending_20on_20an ;;
  }

  dimension: context_campaign_mlaptop_20deskedium {
    type: string
    sql: ${TABLE}.context_campaign_mlaptop_20deskedium ;;
  }

  dimension: context_campaign_placemen_qt {
    type: string
    sql: ${TABLE}.context_campaign_placemen_qt ;;
  }

  dimension: context_campaign_1d {
    type: string
    sql: ${TABLE}.context_campaign_1d ;;
  }

  dimension: context_campaign_1dset {
    type: string
    sql: ${TABLE}.context_campaign_1dset ;;
  }

  dimension: context_campaign_c1mp1ign {
    type: string
    sql: ${TABLE}.context_campaign_c1mp1ign ;;
  }

  dimension: context_campaign_pl1cement {
    type: string
    sql: ${TABLE}.context_campaign_pl1cement ;;
  }

  dimension: context_campaign_bcp {
    type: string
    sql: ${TABLE}.context_campaign_bcp ;;
  }

  dimension: context_campaign_sourbest_20gifts_20for_2010_20year_20oldce {
    type: string
    sql: ${TABLE}.context_campaign_sourbest_20gifts_20for_2010_20year_20oldce ;;
  }

  dimension: context_campaign_conyoutubetent {
    type: string
    sql: ${TABLE}.context_campaign_conyoutubetent ;;
  }

  dimension: context_campaign_sq {
    type: string
    sql: ${TABLE}.context_campaign_sq ;;
  }

  dimension: context_campaign_campfaign {
    type: string
    sql: ${TABLE}.context_campaign_campfaign ;;
  }

  dimension: context_campaign_medfaium {
    type: string
    sql: ${TABLE}.context_campaign_medfaium ;;
  }

  dimension: context_campaign_googmedium {
    type: string
    sql: ${TABLE}.context_campaign_googmedium ;;
  }

  dimension: context_campaign_mediuebaym {
    type: string
    sql: ${TABLE}.context_campaign_mediuebaym ;;
  }

  dimension: context_campaign_sour {
    type: string
    sql: ${TABLE}.context_campaign_sour ;;
  }

  dimension: context_campaign_medigmail_comum {
    type: string
    sql: ${TABLE}.context_campaign_medigmail_comum ;;
  }

  dimension: context_campaign_campaighttps_www_subscriptionboxmom_com_postpalclubn {
    type: string
    sql: ${TABLE}.context_campaign_campaighttps_www_subscriptionboxmom_com_postpalclubn ;;
  }

  dimension: context_campaign_unptid {
    type: string
    sql: ${TABLE}.context_campaign_unptid ;;
  }

  dimension: context_campaign_horriblecontent {
    type: string
    sql: ${TABLE}.context_campaign_horriblecontent ;;
  }

  dimension: context_campaign_ad_20 {
    type: string
    sql: ${TABLE}.context_campaign_ad_20 ;;
  }

  dimension: context_campaign_campa_vcr_20l_ign {
    type: string
    sql: ${TABLE}.context_campaign_campa_vcr_20l_ign ;;
  }

  dimension: context_campaign_campaigcnn {
    type: string
    sql: ${TABLE}.context_campaign_campaigcnn ;;
  }

  dimension: universal_alias {
    type: string
    sql: ${TABLE}.universal_alias ;;
  }

  set: detail {
    fields: [
      uuid_ts_time,
      anonymous_id,
      context_campaign_3_a_2_f_2_fwww_tinkercrate_com_2_fjoin_3_futm_source,
      context_campaign_3_futm_source,
      context_campaign_caampaign,
      context_campaign_camp_20aign,
      context_campaign_camp_e2_80_8baign,
      context_campaign_campai_20gn,
      context_campaign_campaignn,
      context_campaign_campaigzillown,
      context_campaign_content,
      context_campaign_e2_80_8bcampaign,
      context_campaign_e2_80_8bmedium,
      context_campaign_e2_80_8bsource,
      context_campaign_m_e2_80_8bedium,
      context_campaign_medi_e2_80_8bum,
      context_campaign_medifaum,
      context_campaign_medium,
      context_campaign_mediumcnn,
      context_campaign_meradio_netdium,
      context_campaign_mountaincraftfdays,
      context_campaign_name,
      context_campaign_s_e2_80_8bource,
      context_campaign_source,
      context_campaign_src,
      context_campaign_term,
      context_campaign_utm_campaign,
      context_campaign_utm_content,
      context_campaign_utm_medium,
      context_campaign_utm_source,
      context_ip,
      context_library_name,
      context_library_version,
      context_page_path,
      context_page_referrer,
      context_page_search,
      context_page_title,
      context_page_url,
      context_prxuser_agent,
      context_user_agent,
      customer,
      email,
      first_name,
      group_id,
      last_name,
      original_timestamp_time,
      page,
      path,
      received_at_time,
      referrer,
      search,
      sent_at_time,
      session_id,
      timestamp_time,
      title,
      url,
      user_id,
      id,
      loaded_at_time,
      context_campaign_campa_20ign,
      context_campaign_how_20to_20create_20privacy_20on_20condo_20bacony_20rulessource,
      all_products,
      total_revenue,
      context_campaign_cam_e2_80_8bpaign,
      context_campaign_arvestcontent,
      context_campaign_bingsource,
      context_campaign_c_20ampaign,
      context_campaign_ca_20mpaign,
      context_campaign_cam_20paign,
      context_campaign_camfaign,
      context_campaign_campaigkiwi_cratesn,
      context_campaign_campaign_5c,
      context_campaign_campaingn,
      context_campaign_cnnmedium,
      context_campaign_conupsent,
      context_campaign_cot,
      context_campaign_glowbug_activitycontent,
      context_campaign_m2x4_20bench_20plansedium,
      context_campaign_medifum,
      context_campaign_medium_20_20_20_20,
      context_campaign_medium_5c,
      context_campaign_meium,
      context_campaign_mraddish_20kidsedium,
      context_campaign_sairource,
      context_campaign_so_pinteresturce,
      context_campaign_sorce,
      context_campaign_soufrce,
      context_campaign_source_5c,
      context_campaign_sourcork_20board_20squaresce,
      context_campaign_sourcse,
      context_campaign_sourctarget_20kailua_20black_20fridaye,
      context_campaign_sourcyntonia_20brownce,
      context_campaign_sourpce,
      context_campaign_surce,
      context_campaign_term0,
      context_campaign_term_5c,
      context_campaign_therm,
      context_campaign_uyyy677icontent,
      context_campaign_20campaign,
      context_campaign_20medium,
      context_campaign_mediuplane_20finderm,
      context_campaign_souamazon_comce,
      context_campaign_camaign,
      context_campaign_campaing,
      context_campaign_contentsssss,
      context_campaign_ad,
      context_campaign_adset,
      context_campaign_placement,
      context_campaign_expid,
      context_campaign_referrer,
      context_campaign_yopkdgx_20i_comofg5dytcontent,
      context_campaign_adf,
      context_campaign_campa_knitting_20_nutcaseign,
      context_campaign_campa_knitting_20nutcaseign,
      context_campaign_ter_20m,
      context_campaign_sourcev,
      context_amp_id,
      context_campaign_dhydehydrationcausedbycolonoscomedium,
      context_campaign_sourbuild_20your_20own_20comuterce,
      context_campaign_adse_20t,
      context_campaign_souce,
      context_campaign_medi_kikcoum,
      context_campaign_preview,
      context_campaign_sou7_20y7yhurce,
      context_campaign_medum,
      context_campaign_campaign,
      context_campaign_expidkiwi_20,
      context_campaign_google_comexpid,
      __segment_dedupe_id,
      category,
      context_campaign_meamerican_20girl_20catalogium,
      context_campaign_mediuelron,
      context_campaign_maedium,
      context_campaign_sourse,
      context_campaign_cammagiccabinpaign,
      context_campaign_sourc,
      context_campaign_contenh6yu0w_utm_term,
      context_campaign_campaigllln,
      context_campaign_medium_boogie_20board_20magic_20sketch_20kid_27s_20activity_20travel_20set,
      context_campaign_campaamagn,
      context_campaign_medibobby_20vans_20um,
      context_campaign_campagn,
      context_campaign_sourcwords_20ending_20on_20an,
      context_campaign_mlaptop_20deskedium,
      context_campaign_placemen_qt,
      context_campaign_1d,
      context_campaign_1dset,
      context_campaign_c1mp1ign,
      context_campaign_pl1cement,
      context_campaign_bcp,
      context_campaign_sourbest_20gifts_20for_2010_20year_20oldce,
      context_campaign_conyoutubetent,
      context_campaign_sq,
      context_campaign_campfaign,
      context_campaign_medfaium,
      context_campaign_googmedium,
      context_campaign_mediuebaym,
      context_campaign_sour,
      context_campaign_medigmail_comum,
      context_campaign_campaighttps_www_subscriptionboxmom_com_postpalclubn,
      context_campaign_unptid,
      context_campaign_horriblecontent,
      context_campaign_ad_20,
      context_campaign_campa_vcr_20l_ign,
      context_campaign_campaigcnn,
      universal_alias
    ]
  }
}
