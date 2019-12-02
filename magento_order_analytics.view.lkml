view: magento_order_analytics {
  sql_table_name: javascript.magento_order_analytics ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ad {
    type: string
    sql: ${TABLE}.ad ;;
  }

  dimension: adset {
    type: string
    sql: ${TABLE}.adset ;;
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: campaign_type {
    case: {
      when: {
        sql: ${TABLE}.campaign LIKE "%welcome%" AND  ${TABLE}.medium = "email";;
        label: "Welcome Series"
      }
      when: {
        sql: ${TABLE}.source LIKE "%Aban" AND  ${TABLE}.medium = "email";;
        label: "Abandoned Cart"
      }
      when: {
        sql: ${TABLE}.content LIKE "%aban" AND  ${TABLE}.medium = "email";;
        label: "Abandoned Cart"
      }
      when: {
        sql: ${TABLE}.campaign LIKE "lgx%" AND  ${TABLE}.medium = "email";;
        label: "promo_exsub"
      }
      when: {
        sql: ${TABLE}.campaign LIKE "lg%" AND  ${TABLE}.medium = "email";;
        label: "promo_leadgen"
      }
      when: {
        sql: ${TABLE}.campaign LIKE "nl%" AND  ${TABLE}.medium = "email";;
        label: "promo_active_sub"
      }
      when: {
        sql: ${TABLE}.campaign LIKE "rn%" AND  ${TABLE}.medium = "email";;
        label: "Gift Renew"
      }
      when: {
        sql: ${TABLE}.campaign LIKE "gifterrenew%" AND  ${TABLE}.medium = "email";;
        label: "Gift Renew"
      }
      when: {
        sql: ${TABLE}.campaign LIKE "renew-r%" AND  ${TABLE}.medium = "email";;
        label: "Extension Offer"
      }
      when: {
        sql: ${TABLE}.campaign LIKE "givethanks%" AND  ${TABLE}.medium = "email";;
        label: "Thank You Card"
      }
      when: {
        sql: ${TABLE}.campaign LIKE "ship-conf%" AND  ${TABLE}.medium = "email";;
        label: "Shipping Confirmation"
      }
      when: {
        sql: ${TABLE}.campaign LIKE "%survey%" AND  ${TABLE}.medium = "email";;
        label: "Survey"
      }
      when: {
        sql: ${TABLE}.campaign LIKE "sgrdraf%" AND  ${TABLE}.medium = "email";;
        label: "Refer a Friend"
      }
    }
  }

  dimension: channel {
    case: {
      when: {
        sql: ${TABLE}.campaign LIKE "raf%" AND  ${TABLE}.medium = "social";;
        label: "RAF"
      }
      when: {
        sql: ${TABLE}.campaign LIKE "ltbx%" AND  ${TABLE}.medium = "social";;
        label: "RAF"
      }
      when: {
        sql: ${TABLE}.campaign LIKE "referral" AND  ${TABLE}.medium = "email";;
        label: "RAF"
      }
      when: {
        sql: ${TABLE}.campaign LIKE "lgx%" OR  ${TABLE}.campaign LIKE "lg%" OR  ${TABLE}.campaign LIKE "nl%" AND  ${TABLE}.medium = "email";;
        label: "email_promo"
      }
      when: {
        sql: ${TABLE}.medium = "email";;
        label: "email_triggered"
      }
      when: {
        sql: ${TABLE}.medium = "(none)" OR ${TABLE}.medium IS NULL;;
        label: "direct"
      }
    }
  }

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: placement {
    type: string
    sql: ${TABLE}.placement ;;
  }

  dimension: referrer {
    type: string
    sql: ${TABLE}.referrer ;;
  }

  dimension: session {
    type: string
    sql: ${TABLE}.session ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: term {
    type: string
    sql: ${TABLE}.term ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
