view: a06_Base_Table {
  derived_table: {
    sql: Select ComOrder1.order_id Order_ID,
      date(ComOrder1.timestamp) OrderTimestamp,
      ComOrder1.session_id OrderSession_ID,
      Page.new_universal_id Universal_ID,
      Page2.context_campaign_medium,
      Page2.session_id EventSession_ID,
      date(Page2.timestamp) EventTimestamp
      from ${a04_Anony_Remover.SQL_TABLE_NAME}  Page
      inner join javascript.completed_order ComOrder1 on Page.Session_id=ComOrder1.Session_id
      inner join ${a04_Anony_Remover.SQL_TABLE_NAME} Page2 on Page2.new_universal_id=Page.new_universal_id
      where date(ComOrder1.timestamp)>='2018-11-01' and date(ComOrder1.timestamp)<'2019-11-01'
      and (Page2.context_campaign_medium is not null or Page2.session_id=ComOrder1.session_id)
      group by 1,2,3,4,5,6,7
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

  set: detail {
    fields: [
      order_id,
      order_timestamp,
      order_session_id,
      universal_id,
      context_campaign_medium,
      event_session_id,
      event_timestamp
    ]
  }
}
