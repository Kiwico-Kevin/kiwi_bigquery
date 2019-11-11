view: a01_anonymous_ids_list {
  derived_table: {
    sql: select distinct A.*
        from
        (
          SELECT
            anonymous_id AS alias,
            user_id AS next_alias
          FROM (select * from `kiwi-data-warehouse.javascript.tracks` where date(timestamp)>='2017-11-01')A
          UNION ALL
          SELECT
            previous_id,
            user_id
          FROM ( select * from `kiwi-data-warehouse.javascript.aliases_view` where date(timestamp)>='2017-11-01')B
        )A
 ;;
    sql_trigger_value: SELECT CURRENT_DATE() ;;

  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }

  dimension: next_alias {
    type: string
    sql: ${TABLE}.next_alias ;;
  }

  set: detail {
    fields: [alias, next_alias]
  }
}
