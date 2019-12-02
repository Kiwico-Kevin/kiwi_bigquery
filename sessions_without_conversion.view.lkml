view: sessions_without_conversion {
  sql_table_name: javascript.sessions_without_conversion ;;

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  dimension: calculated_utm_campaign {
    type: string
    sql: ${TABLE}.calculated_utm_campaign ;;
  }

  dimension: calculated_utm_medium {
    type: string
    sql: ${TABLE}.calculated_utm_medium ;;
  }

  dimension: calculated_utm_source {
    type: string
    sql: ${TABLE}.calculated_utm_source ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
