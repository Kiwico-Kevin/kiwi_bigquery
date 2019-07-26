view: pages_comp_order {
  derived_table: {
    sql: SELECT Pages.*
      from looker_scratch.LR_5HZXN3SI6ABZ8PI97M9AB_universal_id_pages Pages
      inner join
      (
        Select Page.New_Universal_id
        from javascript.completed_order ComOrder1
        inner join looker_scratch.LR_5HZXN3SI6ABZ8PI97M9AB_universal_id_pages Page
        on Page.Session_id=ComOrder1.Session_id
        where date(ComOrder1.timestamp)>='2019-06-01' and date(ComOrder1.timestamp)<'2019-07-01'
      ) ComOrder
      on Pages.New_Universal_id=ComOrder.New_Universal_id
      where date(Pages.timestamp)<='2019-06-30'
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
