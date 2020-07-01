view: storesearch {
  derived_table: {
    sql: SELECT
      date(timestamp) Date,
      trim(lower(substr(context_page_search, 4, 15))) SearchTerm,
      count(distinct session_id) CountSessions,
      count(distinct anonymous_id) CountVisitors
      FROM `kiwi-data-warehouse.javascript.pages`
      where context_page_path like '%catalogsearch%'
      group by 1,2
    sql_trigger_value: SELECT CURDATE()
    ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: date {
    type: date
    sql: ${TABLE}.Date ;;
  }

  dimension: search_term {
    type: string
    sql: ${TABLE}.SearchTerm ;;
  }

  dimension: count_sessions {
    type: number
    sql: ${TABLE}.CountSessions ;;
  }

  dimension: count_visitors {
    type: number
    sql: ${TABLE}.CountVisitors ;;
  }

  set: detail {
    fields: [date, search_term, count_sessions, count_visitors]
  }
}
