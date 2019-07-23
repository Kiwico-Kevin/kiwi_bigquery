view: page_universal_id {
  derived_table: {
    sql: with Universal_mapping as (
      with realiases as (
        select distinct A.*
        from
        (
          SELECT
            anonymous_id AS alias,
            user_id AS next_alias
          FROM `kiwi-data-warehouse.javascript.tracks`
          UNION ALL
          SELECT
            previous_id,
            user_id
          FROM `kiwi-data-warehouse.javascript.aliases_view`
        )A
      )
      SELECT DISTINCT
      r0.alias
      , COALESCE(
              r16.next_alias
            , r16.alias
            , r15.alias
            , r14.alias
            , r13.alias
            , r12.alias
            , r11.alias
            , r10.alias
            , r9.alias
            , r8.alias
            , r7.alias
            , r6.alias
            , r5.alias
            , r4.alias
            , r3.alias
            , r2.alias
            , r1.alias
            , r0.alias
          ) AS universal_alias
          FROM realiases AS r0
          LEFT JOIN realiases r1 ON r0.next_alias = r1.alias
          LEFT JOIN realiases r2 ON r1.next_alias = r2.alias
          LEFT JOIN realiases r3 ON r2.next_alias = r3.alias
          LEFT JOIN realiases r4 ON r3.next_alias = r4.alias
          LEFT JOIN realiases r5 ON r4.next_alias = r5.alias
          LEFT JOIN realiases r6 ON r5.next_alias = r6.alias
          LEFT JOIN realiases r7 ON r6.next_alias = r7.alias
          LEFT JOIN realiases r8 ON r7.next_alias = r8.alias
          LEFT JOIN realiases r9 ON r8.next_alias = r9.alias
          LEFT JOIN realiases r10 ON r9.next_alias = r10.alias
          LEFT JOIN realiases r11 ON r10.next_alias = r11.alias
          LEFT JOIN realiases r12 ON r11.next_alias = r12.alias
          LEFT JOIN realiases r13 ON r12.next_alias = r13.alias
          LEFT JOIN realiases r14 ON r13.next_alias = r14.alias
          LEFT JOIN realiases r15 ON r14.next_alias = r15.alias
          LEFT JOIN realiases r16 ON r15.next_alias = r16.alias
      )
      SELECT Page.anonymous_id,Page.context_campaign_medium,Page.session_id,Page.timestamp,UNI.universal_alias
      FROM `kiwi-data-warehouse.javascript.pages` Page
      LEFT JOIN Universal_mapping UNI On Page.anonymous_id=UNI.alias
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
