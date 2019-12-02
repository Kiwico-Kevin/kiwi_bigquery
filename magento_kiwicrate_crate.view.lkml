view: magento_kiwicrate_crate {
  sql_table_name: rdstobigquery.magento_kiwicrate_crate ;;

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

  dimension: crate_image {
    type: string
    sql: ${TABLE}.crate_image ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_time ;;
  }

  dimension: customer_title {
    type: string
    sql: ${TABLE}.customer_title ;;
  }

  dimension: deluxe_only {
    type: number
    sql: ${TABLE}.deluxe_only ;;
  }

  dimension: feedback_url {
    type: string
    sql: ${TABLE}.feedback_url ;;
  }

  dimension: instruction_url {
    type: string
    sql: ${TABLE}.instruction_url ;;
  }

  dimension: landing_url {
    type: string
    sql: ${TABLE}.landing_url ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: root_id {
    type: number
    sql: ${TABLE}.root_id ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: supported_countries {
    type: string
    sql: ${TABLE}.supported_countries ;;
  }

  dimension: survey_id {
    type: string
    sql: ${TABLE}.survey_id ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension_group: update {
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
    sql: ${TABLE}.update_time ;;
  }

  dimension: weight_individual {
    type: number
    sql: ${TABLE}.weight_individual ;;
  }

  dimension: weight_individual_first_crate {
    type: number
    sql: ${TABLE}.weight_individual_first_crate ;;
  }

  dimension: weight_sibling {
    type: number
    sql: ${TABLE}.weight_sibling ;;
  }

  dimension: weight_sibling_first_crate {
    type: number
    sql: ${TABLE}.weight_sibling_first_crate ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
