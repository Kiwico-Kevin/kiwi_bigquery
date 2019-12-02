view: magento_sales_flat_order_payment {
  sql_table_name: rdstobigquery.magento_sales_flat_order_payment ;;

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

  dimension: additional_information {
    type: string
    sql: ${TABLE}.additional_information ;;
  }

  dimension: adyen_auth_code {
    type: string
    sql: ${TABLE}.adyen_auth_code ;;
  }

  dimension: adyen_event_code {
    type: string
    sql: ${TABLE}.adyen_event_code ;;
  }

  dimension: adyen_psp_reference {
    type: string
    sql: ${TABLE}.adyen_psp_reference ;;
  }

  dimension: amount_authorized {
    type: number
    sql: ${TABLE}.amount_authorized ;;
  }

  dimension: amount_ordered {
    type: number
    sql: ${TABLE}.amount_ordered ;;
  }

  dimension: amount_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.amount_paid ;;
  }

  dimension: amount_refunded {
    type: number
    sql: ${TABLE}.amount_refunded ;;
  }

  dimension: anet_trans_method {
    type: string
    sql: ${TABLE}.anet_trans_method ;;
  }

  dimension: base_amount_authorized {
    type: number
    sql: ${TABLE}.base_amount_authorized ;;
  }

  dimension: base_amount_ordered {
    type: number
    sql: ${TABLE}.base_amount_ordered ;;
  }

  dimension: base_amount_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.base_amount_paid ;;
  }

  dimension: base_amount_paid_online {
    type: number
    sql: ${TABLE}.base_amount_paid_online ;;
  }

  dimension: base_amount_refunded {
    type: number
    sql: ${TABLE}.base_amount_refunded ;;
  }

  dimension: base_amount_refunded_online {
    type: number
    sql: ${TABLE}.base_amount_refunded_online ;;
  }

  dimension: base_shipping_amount {
    type: number
    sql: ${TABLE}.base_shipping_amount ;;
  }

  dimension: base_shipping_captured {
    type: number
    sql: ${TABLE}.base_shipping_captured ;;
  }

  dimension: base_shipping_refunded {
    type: number
    sql: ${TABLE}.base_shipping_refunded ;;
  }

  dimension: cc_exp_month {
    type: string
    sql: ${TABLE}.cc_exp_month ;;
  }

  dimension: cc_exp_year {
    type: string
    sql: ${TABLE}.cc_exp_year ;;
  }

  dimension: cc_last4 {
    type: string
    sql: ${TABLE}.cc_last4 ;;
  }

  dimension: cc_number_enc {
    type: string
    sql: ${TABLE}.cc_number_enc ;;
  }

  dimension: cc_owner {
    type: string
    sql: ${TABLE}.cc_owner ;;
  }

  dimension: cc_ss_start_month {
    type: string
    sql: ${TABLE}.cc_ss_start_month ;;
  }

  dimension: cc_ss_start_year {
    type: string
    sql: ${TABLE}.cc_ss_start_year ;;
  }

  dimension: cc_trans_id {
    type: string
    sql: ${TABLE}.cc_trans_id ;;
  }

  dimension: cc_type {
    type: string
    sql: ${TABLE}.cc_type ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: last_trans_id {
    type: string
    sql: ${TABLE}.last_trans_id ;;
  }

  dimension: method {
    type: string
    sql: ${TABLE}.method ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: po_number {
    type: string
    sql: ${TABLE}.po_number ;;
  }

  dimension: shipping_amount {
    type: number
    sql: ${TABLE}.shipping_amount ;;
  }

  dimension: shipping_captured {
    type: number
    sql: ${TABLE}.shipping_captured ;;
  }

  dimension: shipping_refunded {
    type: number
    sql: ${TABLE}.shipping_refunded ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
