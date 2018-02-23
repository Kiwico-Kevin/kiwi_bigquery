view: customer_first_order {
  derived_table: {
    sql:
      SELECT
        customer_id,
        first_value(entity_id) OVER (PARTITION BY ${customer_id} ORDER BY created_at ASC)
          AS first_order
      FROM
        magento_flat_order ;;
    }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
    primary_key: yes
    hidden: yes
  }
  dimension: first_order {
    type: number
    sql: ${TABLE}.first_order ;;
    hidden: yes
  }
}
