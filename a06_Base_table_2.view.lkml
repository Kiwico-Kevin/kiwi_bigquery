view: a06_Base_table_2 {
  derived_table: {
    sql: SELECT A.*
      from
      (
        SELECT base.*,
        case when base.OrderTimestamp>=base.EventTimestamp then 1 else 0 end as Before_order_1,
        case when base.OrderTimestamp=base.EventTimestamp then 1 else 0 end as Is_order_1,
        case when base.context_campaign_medium is null  then "Z-Unknown" else base.context_campaign_medium end as Session_Medium
        FROM ${a06_Base_tabler.SQL_TABLE_NAME} base
      )A
      ORDER BY A.order_id,A.EventTimestamp,A.Session_Medium
       ;;
    sql_trigger_value: SELECT CURRENT_DATE() ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.Order_ID ;;
  }

  dimension: order_timestamp {
    type: date
    sql: ${TABLE}.OrderTimestamp ;;
  }

  dimension: order_session_id {
    type: string
    sql: ${TABLE}.OrderSession_ID ;;
  }

  dimension: universal_id {
    type: string
    sql: ${TABLE}.Universal_ID ;;
  }

  dimension: context_campaign_medium {
    type: string
    sql: ${TABLE}.context_campaign_medium ;;
  }

  dimension: event_session_id {
    type: string
    sql: ${TABLE}.EventSession_ID ;;
  }

  dimension: event_timestamp {
    type: date
    sql: ${TABLE}.EventTimestamp ;;
  }

  dimension: before_order_1 {
    type: number
    sql: ${TABLE}.Before_order_1 ;;
  }

  dimension: is_order_1 {
    type: number
    sql: ${TABLE}.Is_order_1 ;;
  }

  dimension: session_medium {
    type: string
    sql: ${TABLE}.Session_Medium ;;
  }

  set: detail {
    fields: [
      order_id,
      order_timestamp,
      order_session_id,
      universal_id,
      context_campaign_medium,
      event_session_id,
      event_timestamp,
      before_order_1,
      is_order_1,
      session_medium
    ]
  }
}
