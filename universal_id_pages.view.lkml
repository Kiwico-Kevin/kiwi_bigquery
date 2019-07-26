view: universal_id_pages {
  derived_table: {
    sql: with Page as
      (
        SELECT Page.*,
        Case when Page.universal_alias is null then Page.anonymous_id else Page.anonymous_id end as New_Universal_id
        FROM `kiwi-data-warehouse.looker_scratch.LR_5HL1RK5ZGK1CN8UPEAB0B_page_universal_id_New` Page
        INNER JOIN
        (
          SELECT A.anonymous_id
          from
          (
            SELECT Page.*,
            Case when Page.universal_alias is null then Page.anonymous_id else Page.anonymous_id end as New_Universal_id
            FROM `kiwi-data-warehouse.looker_scratch.LR_5HL1RK5ZGK1CN8UPEAB0B_page_universal_id_New` Page
          )A
          group by A.anonymous_id
          having count(distinct A.New_Universal_id)=1
        ) Anony_remover
        on Anony_remover.anonymous_id=Page.anonymous_id
      )

      select * from Page
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
