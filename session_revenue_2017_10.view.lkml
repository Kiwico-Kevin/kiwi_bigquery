view: session_revenue_2017_10 {
  sql_table_name: javascript.session_revenue_2017_10 ;;

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: prerow {
    type: number
    sql: ${TABLE}.prerow ;;
  }

  dimension: products {
    type: string
    sql: ${TABLE}.products ;;
  }

  dimension: revenue {
    type: string
    sql: ${TABLE}.revenue ;;
  }

  dimension: rowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.rowid ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
