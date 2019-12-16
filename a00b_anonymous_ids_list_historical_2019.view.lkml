view: a00b_anonymous_ids_list_historical_2019 {
  derived_table: {
    sql: select distinct A.*
        from
        (
          SELECT
            anonymous_id AS alias,
            user_id AS next_alias,
            original_timestamp AS original_timestamp
          FROM (select * from `kiwi-data-warehouse.javascript.tracks` where date(original_timestamp)>='2017-11-01' AND date(original_timestamp)<'2019-12-01' )A
          UNION ALL
          SELECT
            previous_id,
            user_id,
            original_timestamp
          FROM ( select * from `kiwi-data-warehouse.javascript.aliases_view` where date(original_timestamp)>='2017-11-01'AND date(original_timestamp)<'2019-12-01' )B
        )A
 ;;
    sql_trigger_value: SELECT 1 ;;

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
