view: landing_page{
    derived_table: {
      sql:
      SELECT
        session_id,
        first_value(path ignore nulls) OVER (PARTITION BY session_id ORDER BY timestamp ASC)
          AS first_path
      FROM
        pages ;;
      sql_trigger_value: SELECT_CURDATE() ;;
    }

    dimension: session_id {
      type: string
      sql: ${TABLE}.session_id ;;
      primary_key: yes
    }
    dimension: first_path {
      type: string
      sql: ${TABLE}.first_path ;;
    }

  dimension: path_type {
    sql:
      CASE
        WHEN ${first_path} LIKE '/' THEN 'Homepage'
        WHEN ${first_path} LIKE '/kiwicrate_customeraccount/subscriptions' THEN 'Sub Hub'
        WHEN ${first_path} LIKE '/subscription/manage/index/id/%' THEN 'Manage Subscription'
        WHEN ${first_path} LIKE '/kiwicrate_customeraccount/orders%' THEN 'Manage Store Orders'
        WHEN ${first_path} LIKE '/kiwicrate_customeraccount/credits%' THEN 'Rewards'
        WHEN ${first_path} LIKE '/customer/account/forgotpassword%' THEN 'Forgot Password'
        WHEN ${first_path} LIKE '/customer/account/login%' THEN 'Account Login'
        WHEN ${first_path} LIKE '/customer/account%' THEN 'Manage Account'
        WHEN ${first_path} LIKE '/tinker' THEN 'Tinker Page'
        WHEN ${first_path} LIKE '/kiwi' THEN 'Kiwi Page'
        WHEN ${first_path} LIKE '/koala' THEN 'Koala Page'
        WHEN ${first_path} LIKE '/doodle' THEN 'Doodle Page'
        WHEN ${first_path} LIKE '/cricket' THEN 'Cricket Page'
        WHEN ${first_path} LIKE '/Gifting' THEN 'Gifting Page'
        WHEN ${first_path} LIKE '/tinker/%' THEN 'Tinker Explore'
        WHEN ${first_path} LIKE '/kiwi/%' THEN 'Kiwi Explore'
        WHEN ${first_path} LIKE '/koala/%' THEN 'Koala Explore'
        WHEN ${first_path} LIKE '/doodle/%' THEN 'Doodle Explore'
        WHEN ${first_path} LIKE '/cricket/%' THEN 'Cricket Explore'
        WHEN ${first_path} LIKE '/store%' THEN 'Store'
        WHEN ${first_path} LIKE '/blog/%' THEN 'Blog'
        WHEN ${first_path} LIKE '/diy/%' THEN 'DIY'
        WHEN ${first_path} LIKE '/survey%' THEN 'Survey'
        WHEN ${first_path} LIKE '/m/%' OR ${first_path} LIKE '/try' OR ${first_path} LIKE '/smarter' THEN 'Marketing'
        WHEN ${first_path} LIKE '/checkout%' THEN 'Checkout'
        ELSE 'Other'
    END;;
  }
  }
