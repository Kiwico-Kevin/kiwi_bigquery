view: attribution_data_2017 {
  sql_table_name: javascript.attribution_data_2017 ;;

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: products {
    type: string
    sql: ${TABLE}.products ;;
  }

  dimension: revenue {
    type: number
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

  measure: count {
    type: count
    drill_fields: [context_campaign_name]
  }
}
