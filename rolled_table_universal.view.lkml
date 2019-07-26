view: rolled_table_universal {
  derived_table: {
    sql: SELECT distinct Pages.New_Universal_id, first_value(context_campaign_medium) OVER (PARTITION BY Pages.New_Universal_id ORDER BY timestamp ASC) AS first_medium,
      last_value(context_campaign_medium ) OVER (PARTITION BY Pages.New_Universal_id ORDER BY timestamp ASC) AS last_medium
      from (select * from `kiwi-data-warehouse.looker_scratch.LR_5HK2ONQ23YCNRMEOA8UJH_pages_comp_order` limit 100) Pages
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: new_universal_id {
    type: string
    sql: ${TABLE}.New_Universal_id ;;
  }

  dimension: first_medium {
    type: string
    sql: ${TABLE}.first_medium ;;
  }

  dimension: last_medium {
    type: string
    sql: ${TABLE}.last_medium ;;
  }

  set: detail {
    fields: [new_universal_id, first_medium, last_medium]
  }
}
