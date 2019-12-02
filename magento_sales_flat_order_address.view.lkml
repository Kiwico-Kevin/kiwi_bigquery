view: magento_sales_flat_order_address {
  sql_table_name: rdstobigquery.magento_sales_flat_order_address ;;

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

  dimension: address_type {
    type: string
    sql: ${TABLE}.address_type ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: country_id {
    type: string
    sql: ${TABLE}.country_id ;;
  }

  dimension: customer_address_id {
    type: number
    sql: ${TABLE}.customer_address_id ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: dpbc {
    type: string
    sql: ${TABLE}.dpbc ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.fax ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.firstname ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.lastname ;;
  }

  dimension: middlename {
    type: string
    sql: ${TABLE}.middlename ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: postcode {
    type: string
    sql: ${TABLE}.postcode ;;
  }

  dimension: prefix {
    type: string
    sql: ${TABLE}.prefix ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.region_id ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }

  dimension: suffix {
    type: string
    sql: ${TABLE}.suffix ;;
  }

  dimension: telephone {
    type: string
    sql: ${TABLE}.telephone ;;
  }

  measure: count {
    type: count
    drill_fields: [firstname, middlename, lastname]
  }
}
