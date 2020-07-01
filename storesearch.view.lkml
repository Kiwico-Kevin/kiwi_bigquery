view: storesearch {
  derived_table: {
    sql: SELECT
      timestamp SearchDate,
      trim(lower(substr(context_page_search, 4, 15))) SearchTerm,
      count(distinct session_id) CountSessions,
      count(distinct anonymous_id) CountVisitors
      FROM `kiwi-data-warehouse.javascript.pages`
      where context_page_path like '%catalogsearch%'
      group by 1,2
    ;;
    sql_trigger_value: SELECT CURRENT_DATE() ;;
    }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: search_date {
    type: date
    sql: ${TABLE}.SearchDate ;;
  }

  dimension: search_term {
    type: string
    sql: ${TABLE}.SearchTerm ;;
  }

  measure: count_sessions {
    type: sum
    sql: ${TABLE}.CountSessions ;;
  }

  measure: count_visitors {
    type: sum
    sql: ${TABLE}.CountVisitors ;;
  }

  set: detail {
    fields: [search_date, search_term, count_sessions, count_visitors]
  }
}
