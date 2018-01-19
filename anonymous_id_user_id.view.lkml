view: anonymous_id_user_id {
  sql_table_name: javascript.Anonymous_Id_User_Id ;;

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [users.context_campaign_name, users.id, users.context_library_name, users.name]
  }
}
