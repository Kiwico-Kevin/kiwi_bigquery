view: purchase_sessions_table {
  sql_table_name: javascript.Purchase_Sessions_Table ;;

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

  dimension: p_context_campaign_name {
    type: string
    sql: ${TABLE}.p_context_campaign_name ;;
  }

  dimension: p_session_id {
    type: string
    sql: ${TABLE}.p_session_id ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
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

  dimension: ts {
    type: string
    sql: ${TABLE}.ts ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [p_context_campaign_name, users.context_campaign_name, users.id, users.context_library_name, users.name]
  }
}
