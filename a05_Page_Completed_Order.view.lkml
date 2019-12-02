view: a05_Page_Completed_Order {
  derived_table: {
    sql: SELECT Pages.*,case when ComOrder.New_Universal_id is null then 0 else 1 end as order_flag
      from ${a04_Anony_Remover.SQL_TABLE_NAME}  Pages
      left join
      (
        Select Page.New_Universal_id
        from javascript.completed_order ComOrder1
        inner join ${a04_Anony_Remover.SQL_TABLE_NAME}  Page
        on Page.Session_id=ComOrder1.Session_id
        where date(ComOrder1.timestamp)>='2018-11-01' and date(ComOrder1.timestamp)<'2019-11-01'
      ) ComOrder
      on Pages.New_Universal_id=ComOrder.New_Universal_id
       ;;
    sql_trigger_value: SELECT CURRENT_DATE() ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  dimension: context_campaign_medium {
    type: string
    sql: ${TABLE}.context_campaign_medium ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension_group: timestamp {
    type: time
    sql: ${TABLE}.timestamp ;;
  }

  dimension: universal_alias {
    type: string
    sql: ${TABLE}.universal_alias ;;
  }

  dimension: new_universal_id {
    type: string
    sql: ${TABLE}.New_Universal_id ;;
  }

  set: detail {
    fields: [
      anonymous_id,
      context_campaign_medium,
      session_id,
      timestamp_time,
      universal_alias,
      new_universal_id
    ]
  }
}
