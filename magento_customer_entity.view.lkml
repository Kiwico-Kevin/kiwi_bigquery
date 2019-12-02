view: magento_customer_entity {
  sql_table_name: rdstobigquery.magento_customer_entity ;;

#   dimension_group: _sdc_batched {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}._sdc_batched_at ;;
#   }
#
#   dimension: _sdc_deleted_at {
#     type: string
#     sql: ${TABLE}._sdc_deleted_at ;;
#   }
#
#   dimension_group: _sdc_extracted {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}._sdc_extracted_at ;;
#   }
#
#   dimension_group: _sdc_received {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}._sdc_received_at ;;
#   }
#
#   dimension: _sdc_sequence {
#     type: number
#     sql: ${TABLE}._sdc_sequence ;;
#   }
#
#   dimension: _sdc_table_version {
#     type: number
#     sql: ${TABLE}._sdc_table_version ;;
#   }

  dimension: attribute_set_id {
    type: number
    sql: ${TABLE}.attribute_set_id ;;
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: disable_auto_group_change {
    type: number
    sql: ${TABLE}.disable_auto_group_change ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: entity_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.entity_id ;;
  }

  dimension: entity_type_id {
    type: number
    sql: ${TABLE}.entity_type_id ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: increment_id {
    type: string
    sql: ${TABLE}.increment_id ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: website_id {
    type: number
    sql: ${TABLE}.website_id ;;
  }

  dimension: subs_as_giftee {
    sql:
    (SELECT COUNT(*)
    FROM rdstobigquery.magento_kiwicrate_subscription s
    WHERE s.giftee_email=${TABLE}.email AND s.customer_id <> ${TABLE}.entity_id);;
  }


  measure: count {
    type: count_distinct

    drill_fields: []
  }
}
