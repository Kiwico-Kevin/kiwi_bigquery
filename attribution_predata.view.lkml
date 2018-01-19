view: attribution_predata {
  sql_table_name: javascript.attribution_predata ;;

  dimension: rowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.rowid ;;
  }

  dimension: t1_anonymous_id {
    type: string
    sql: ${TABLE}.t1_anonymous_id ;;
  }

  dimension: t1_revenue {
    type: string
    sql: ${TABLE}.t1_revenue ;;
  }

  dimension: t1_session_id {
    type: string
    sql: ${TABLE}.t1_session_id ;;
  }

  dimension_group: t1_timestamp {
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
    sql: ${TABLE}.t1_timestamp ;;
  }

  dimension: t2_anonymous_id {
    type: string
    sql: ${TABLE}.t2_anonymous_id ;;
  }

  dimension: t2_email {
    type: string
    sql: ${TABLE}.t2_email ;;
  }

  dimension: t3_context_campaign_medium {
    type: string
    sql: ${TABLE}.t3_context_campaign_medium ;;
  }

  dimension: t3_context_campaign_name {
    type: string
    sql: ${TABLE}.t3_context_campaign_name ;;
  }

  dimension: t3_context_campaign_source {
    type: string
    sql: ${TABLE}.t3_context_campaign_source ;;
  }

  dimension: t3_session_id {
    type: string
    sql: ${TABLE}.t3_session_id ;;
  }

  dimension_group: t3_timestamp {
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
    sql: ${TABLE}.t3_timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: [t3_context_campaign_name]
  }
}
