view: attribution_tracking_data_2017_03_28 {
  sql_table_name: javascript.Attribution_Tracking_Data_2017_03_28 ;;

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  dimension: products {
    type: string
    sql: ${TABLE}.products ;;
  }

  dimension: revenue {
    type: string
    sql: ${TABLE}.revenue ;;
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

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}.utm_medium ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }

  measure: count {
    type: count
    drill_fields: [users.context_campaign_name, users.id, users.context_library_name, users.name]
  }
}
