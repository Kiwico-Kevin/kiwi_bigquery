view: magento_kiwicrate_order_analytics {
  sql_table_name: rdstobigquery.magento_kiwicrate_order_analytics ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: _sdc_batched {
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
    sql: ${TABLE}._sdc_batched_at ;;
  }

  dimension_group: _sdc_extracted {
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
    sql: ${TABLE}._sdc_extracted_at ;;
  }

  dimension_group: _sdc_received {
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
    sql: ${TABLE}._sdc_received_at ;;
  }

  dimension: _sdc_sequence {
    type: number
    sql: ${TABLE}._sdc_sequence ;;
  }

  dimension: _sdc_table_version {
    type: number
    sql: ${TABLE}._sdc_table_version ;;
  }

  dimension: ad {
    type: string
    sql: ${TABLE}.ad ;;
  }

  dimension: adset {
    type: string
    sql: ${TABLE}.adset ;;
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: campaign_type {
    sql:
     CASE
          WHEN ${TABLE}.campaign LIKE '%welcome%' AND ${TABLE}.medium = 'email' THEN 'Welcome Series'
          WHEN ${TABLE}.source LIKE '%Aban' AND ${TABLE}.medium = 'email'  THEN 'Abandoned Cart'
          WHEN ${TABLE}.content LIKE '%aban' AND ${TABLE}.medium = 'email'  THEN 'Abandoned Cart'
          WHEN ${TABLE}.campaign LIKE 'lgx%' AND ${TABLE}.medium = 'email'  THEN 'promo_exsub'
          WHEN ${TABLE}.campaign LIKE 'lg%' AND ${TABLE}.medium = 'email'  THEN 'promo_leadgen'
          WHEN ${TABLE}.campaign LIKE 'nl%' AND ${TABLE}.medium = 'email'  THEN 'promo_active_sub'
          WHEN ${TABLE}.campaign LIKE 'rn%' AND ${TABLE}.medium = 'email'  THEN 'Gift Renew'
          WHEN ${TABLE}.campaign LIKE 'gifterrenew%' AND ${TABLE}.medium = 'email'  THEN 'Gift Renew'
          WHEN ${TABLE}.campaign LIKE 'renew-r%' AND ${TABLE}.medium = 'email'  THEN 'Extention Offer'
          WHEN ${TABLE}.campaign LIKE 'givethanks%' AND ${TABLE}.medium = 'email'  THEN 'Thank You Card'
          WHEN ${TABLE}.campaign LIKE 'ship-conf%' AND ${TABLE}.medium = 'email'  THEN 'Shipping Confirmation'
          WHEN ${TABLE}.campaign LIKE '%survey%' AND ${TABLE}.medium = 'email'  THEN 'Survey'
          WHEN ${TABLE}.campaign LIKE 'sgrdraf%' AND ${TABLE}.medium = 'email'  THEN 'Refer a Friend'
          ELSE NULL
     END ;;
  }

  dimension: channel {
    sql:
      CASE
          WHEN ${TABLE}.campaign LIKE 'raf%' AND ${TABLE}.medium = 'social' THEN 'RAF'
          WHEN ${TABLE}.campaign LIKE 'ltbx%' AND ${TABLE}.medium = 'social'  THEN 'RAF'
          WHEN ${TABLE}.campaign LIKE 'referral' AND ${TABLE}.medium = 'email'  THEN 'RAF'
          WHEN (${TABLE}.campaign LIKE 'lgx%' OR ${TABLE}.campaign LIKE 'lg%' OR ${TABLE}.campaign LIKE 'nl%') AND ${TABLE}.medium = 'email'  THEN 'email_promo'
          WHEN ${TABLE}.medium = 'email'  THEN 'email_triggered'
          WHEN ${TABLE}.medium = '(none)' OR ${TABLE}.medium IS NULL THEN 'direct'
          ELSE ${TABLE}.medium
     END ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: placement {
    type: string
    sql: ${TABLE}.placement ;;
  }

  dimension: referrer {
    type: string
    sql: ${TABLE}.referrer ;;
  }

  dimension: session {
    type: string
    sql: ${TABLE}.session ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: term {
    type: string
    sql: ${TABLE}.term ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: uah {
    type: string
    sql: ${TABLE}.uah ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
