view: a03_pages_universal_id {
  derived_table: {
    sql:
      SELECT Page.anonymous_id,Page.context_campaign_medium,Page.session_id,Page.timestamp,UNI.universal_alias
      FROM (select * from `kiwi-data-warehouse.javascript.pages` where date(timestamp)>='2017-11-01') Page
      LEFT JOIN `kiwi-data-warehouse.looker_scratch.LR_5HGGDPHPTV2FH779FBBVH_a02_anonymous_id_recursive_joins` UNI On Page.anonymous_id=UNI.alias
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

  set: detail {
    fields: [anonymous_id, context_campaign_medium, session_id, timestamp_time, universal_alias]
  }
}
