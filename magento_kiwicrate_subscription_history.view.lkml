view: magento_kiwicrate_subscription_history {
  sql_table_name: rdstobigquery.magento_kiwicrate_subscription_history ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: _sdc_batched {
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
    sql: ${TABLE}._sdc_batched_at ;;
  }

  dimension_group: _sdc_extracted {
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
    sql: ${TABLE}._sdc_extracted_at ;;
  }

  dimension_group: _sdc_received {
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
    sql: ${TABLE}._sdc_received_at ;;
  }

  dimension: _sdc_sequence {
    type: number
    sql: ${TABLE}._sdc_sequence ;;
  }

  dimension: _sdc_table_version {
    type: number
    sql: ${TABLE}._sdc_table_version ;;
  }

  dimension: admin_id {
    type: number
    sql: ${TABLE}.admin_id ;;
  }

  dimension: attribute {
    type: string
    sql: ${TABLE}.attribute ;;
  }

  dimension: backtrace {
    type: string
    sql: ${TABLE}.backtrace ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension_group: old_value {
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
    sql: ${TABLE}.old_value_date ;;
  }

  dimension: old_value_int {
    type: number
    sql: ${TABLE}.old_value_int ;;
  }

  dimension: old_value_varchar {
    type: string
    sql: ${TABLE}.old_value_varchar ;;
  }

  dimension: subscription_id {
    type: number
    sql: ${TABLE}.subscription_id ;;
  }

  dimension_group: value {
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
    sql: ${TABLE}.value_date ;;
  }

  dimension: value_int {
    type: number
    sql: ${TABLE}.value_int ;;
  }

  dimension: value_type {
    type: string
    sql: ${TABLE}.value_type ;;
  }

  dimension: value_varchar {
    type: string
    sql: ${TABLE}.value_varchar ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
