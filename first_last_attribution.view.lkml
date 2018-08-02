  view: first_last_attribution {
    derived_table: {
      sql:
      SELECT
        anonymous_id,
        first_value(context_campaign_medium) OVER (PARTITION BY anonymous_id ORDER BY timestamp ASC)
          AS first_medium,
        last_value(context_campaign_medium ignore nulls) OVER (PARTITION BY anonymous_id ORDER BY timestamp ASC)
          AS last_medium,
        first_value(context_campaign_source) OVER (PARTITION BY anonymous_id ORDER BY timestamp ASC)
          AS first_source,
        last_value(context_campaign_source ignore nulls) OVER (PARTITION BY anonymous_id ORDER BY timestamp ASC)
          AS last_source,
        first_value(context_campaign_name) OVER (PARTITION BY anonymous_id ORDER BY timestamp ASC)
          AS first_campaign,
        last_value(context_campaign_name ignore nulls) OVER (PARTITION BY anonymous_id ORDER BY timestamp ASC)
          AS last_campaign,
        first_value(context_campaign_content) OVER (PARTITION BY anonymous_id ORDER BY timestamp ASC)
          AS first_content,
        last_value(context_campaign_content ignore nulls) OVER (PARTITION BY anonymous_id ORDER BY timestamp ASC)
          AS last_content,
        first_value(referrer) OVER (PARTITION BY anonymous_id ORDER BY timestamp ASC)
          AS first_referrer,
        last_value(referrer ignore nulls) OVER (PARTITION BY anonymous_id ORDER BY timestamp ASC)
          AS last_referrer,
        first_value(context_campaign_term) OVER (PARTITION BY anonymous_id ORDER BY timestamp ASC)
          AS first_term,
        last_value(context_campaign_term ignore nulls) OVER (PARTITION BY anonymous_id ORDER BY timestamp ASC)
          AS last_term,
        first_value(context_user_agent) OVER (PARTITION BY anonymous_id ORDER BY timestamp ASC)
          AS first_user_agent,
        last_value(context_user_agent ignore nulls) OVER (PARTITION BY anonymous_id ORDER BY timestamp ASC)
          AS last_user_agent
      FROM
        pages ;;
      sql_trigger_value: SELECT CURRENT_DATE() ;;
      }

    dimension: anonymous_id {
      type: string
      sql: ${TABLE}.anonymous_id ;;
      primary_key: yes
      hidden: yes
}
    dimension: first_medium {
      type: string
      sql: ${TABLE}.first_medium ;;
    }
    dimension: last_medium {
      type: string
      sql: ${TABLE}.last_medium ;;
    }
    dimension: first_source {
      type: string
      sql: ${TABLE}.first_source ;;
    }
    dimension: last_source {
      type: string
      sql: ${TABLE}.last_source ;;
    }
    dimension: first_campaign {
      type: string
      sql: ${TABLE}.first_campaign ;;
    }
    dimension: last_campaign {
      type: string
      sql: ${TABLE}.last_campaign ;;
    }
    dimension: first_referrer {
      type: string
      sql: ${TABLE}.first_referrer ;;
    }
    dimension: last_referrer {
      type: string
      sql: ${TABLE}.last_referrer ;;
    }
    dimension: first_content {
      type: string
      sql: ${TABLE}.first_content ;;
    }
    dimension: last_content {
      type: string
      sql: ${TABLE}.last_content ;;
    }
    dimension: first_term {
      type: string
      sql: ${TABLE}.first_term ;;
    }
    dimension: last_term {
      type: string
      sql: ${TABLE}.last_term ;;
    }

    dimension: first_user_agent {
      type: string
      sql: ${TABLE}.first_user_agent ;;
    }

    dimension: first_browser {
      sql:
      CASE
        WHEN ${first_user_agent} LIKE '%Firefox/%' THEN 'Firefox'
        WHEN ${first_user_agent} LIKE '%Chrome/%' OR ${first_user_agent} LIKE '%CriOS%' THEN 'Chrome'
        WHEN ${first_user_agent} LIKE '%MSIE %' THEN 'IE'
        WHEN ${first_user_agent} LIKE '%MSIE+%' THEN 'IE'
        WHEN ${first_user_agent} LIKE '%Trident%' THEN 'IE'
        WHEN ${first_user_agent} LIKE '%iPhone%' THEN 'iPhone Safari'
        WHEN ${first_user_agent} LIKE '%iPad%' THEN 'iPad Safari'
        WHEN ${first_user_agent} LIKE '%Opera%' THEN 'Opera'
        WHEN ${first_user_agent} LIKE '%BlackBerry%' AND ${first_user_agent} LIKE '%Version/%' THEN 'BlackBerry WebKit'
        WHEN ${first_user_agent} LIKE '%BlackBerry%' THEN 'BlackBerry'
        WHEN ${first_user_agent} LIKE '%Android%' THEN 'Android'
        WHEN ${first_user_agent} LIKE '%Safari%' THEN 'Safari'
        WHEN ${first_user_agent} LIKE '%bot%' THEN 'Bot'
        WHEN ${first_user_agent} LIKE '%http://%' THEN 'Bot'
        WHEN ${first_user_agent} LIKE '%www.%' THEN 'Bot'
        WHEN ${first_user_agent} LIKE '%Wget%' THEN 'Bot'
        WHEN ${first_user_agent} LIKE '%curl%' THEN 'Bot'
        WHEN ${first_user_agent} LIKE '%urllib%' THEN 'Bot'
        ELSE 'Unknown'
      END;;
    }

    dimension: first_device {
      sql:
      CASE
        WHEN ${first_user_agent} LIKE '%iPad%' THEN 'iPad'
        WHEN ${first_user_agent} LIKE '%iPhone%' THEN 'iPhone'
        WHEN ${first_user_agent} LIKE '%Android%' THEN 'Android'
        WHEN ${first_user_agent} LIKE '%Mac OS X%' THEN 'OS X'
        WHEN ${first_user_agent} LIKE '%X11%' THEN 'Linux'
        WHEN ${first_user_agent} LIKE '%Windows%' THEN 'Windows'
        ELSE 'Other'
    END;;
    }

    dimension: first_device_group {
      sql:
      CASE
        WHEN ${first_device} = 'iPhone' or ${first_device} = 'Android' THEN 'Mobile'
        WHEN ${first_device} = 'OS X' or ${first_device} = 'Linux' or ${first_device} = 'Windows' THEN 'Desktop'
        WHEN ${first_device} = 'iPad' THEN 'Tablet'
        ELSE 'Other'
    END;;
    }

    dimension: last_user_agent {
      type: string
      sql: ${TABLE}.last_user_agent ;;
    }

    dimension: last_browser {
      sql:
      CASE
        WHEN ${last_user_agent} LIKE '%Firefox/%' THEN 'Firefox'
        WHEN ${last_user_agent} LIKE '%Chrome/%' OR ${last_user_agent} LIKE '%CriOS%' THEN 'Chrome'
        WHEN ${last_user_agent} LIKE '%MSIE %' THEN 'IE'
        WHEN ${last_user_agent} LIKE '%MSIE+%' THEN 'IE'
        WHEN ${last_user_agent} LIKE '%Trident%' THEN 'IE'
        WHEN ${last_user_agent} LIKE '%iPhone%' THEN 'iPhone Safari'
        WHEN ${last_user_agent} LIKE '%iPad%' THEN 'iPad Safari'
        WHEN ${last_user_agent} LIKE '%Opera%' THEN 'Opera'
        WHEN ${last_user_agent} LIKE '%BlackBerry%' AND ${last_user_agent} LIKE '%Version/%' THEN 'BlackBerry WebKit'
        WHEN ${last_user_agent} LIKE '%BlackBerry%' THEN 'BlackBerry'
        WHEN ${last_user_agent} LIKE '%Android%' THEN 'Android'
        WHEN ${last_user_agent} LIKE '%Safari%' THEN 'Safari'
        WHEN ${last_user_agent} LIKE '%bot%' THEN 'Bot'
        WHEN ${last_user_agent} LIKE '%http://%' THEN 'Bot'
        WHEN ${last_user_agent} LIKE '%www.%' THEN 'Bot'
        WHEN ${last_user_agent} LIKE '%Wget%' THEN 'Bot'
        WHEN ${last_user_agent} LIKE '%curl%' THEN 'Bot'
        WHEN ${last_user_agent} LIKE '%urllib%' THEN 'Bot'
        ELSE 'Unknown'
      END;;
    }

    dimension: last_device {
      sql:
      CASE
        WHEN ${last_user_agent} LIKE '%iPad%' THEN 'iPad'
        WHEN ${last_user_agent} LIKE '%iPhone%' THEN 'iPhone'
        WHEN ${last_user_agent} LIKE '%Android%' THEN 'Android'
        WHEN ${last_user_agent} LIKE '%Mac OS X%' THEN 'OS X'
        WHEN ${last_user_agent} LIKE '%X11%' THEN 'Linux'
        WHEN ${last_user_agent} LIKE '%Windows%' THEN 'Windows'
        ELSE 'Other'
    END;;
    }

    dimension: last_device_group {
      sql:
      CASE
        WHEN ${last_device} = 'iPhone' or ${last_device} = 'Android' THEN 'Mobile'
        WHEN ${last_device} = 'OS X' or ${last_device} = 'Linux' or ${last_device} = 'Windows' THEN 'Desktop'
        WHEN ${last_device} = 'iPad' THEN 'Tablet'
        ELSE 'Other'
    END;;
    }
}
