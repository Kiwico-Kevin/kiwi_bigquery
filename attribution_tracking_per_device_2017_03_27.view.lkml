view: attribution_tracking_per_device_2017_03_27 {
  sql_table_name: javascript.Attribution_Tracking_Per_Device_2017_03_27 ;;

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  dimension: calculated_utm_campaign {
    type: string
    sql: ${TABLE}.calculated_utm_campaign ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}.price ;;
  }

  dimension: quantity {
    type: string
    sql: ${TABLE}.quantity ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }

  measure: count {
    type: count
    drill_fields: [users.context_campaign_name, users.id, users.context_library_name, users.name]
  }
}
