view: geolocation_from_ip {
  derived_table: {
    sql:
    SELECT
      id,
      IFNULL(city, 'Other') AS city,
      IFNULL(countryLabel, 'Other') AS countryLabel,
      latitude,
      longitude
    FROM (
      SELECT
        id,
        NET.IPV4_TO_INT64(NET.IP_FROM_STRING(context_ip)) AS clientIpNum,
        TRUNC(NET.IPV4_TO_INT64(NET.IP_FROM_STRING(context_ip))/(256*256)) AS classB
      FROM
        pages where REGEXP_CONTAINS(context_ip, '^[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}$')) AS a
      LEFT OUTER JOIN
        geolite_city_bq_b2b AS b
      ON
        a.classB = b.classB
      AND a.clientIpNum BETWEEN b.startIpNum AND b.endIpNum ;;
    }


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  measure: count {
    type: count
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.countryLabel ;;
  }

  dimension: country_id {
    sql:
     CASE
          WHEN ${TABLE}.countryLabel LIKE '%United States%'  THEN 'US'
          WHEN ${TABLE}.countryLabel LIKE '%Canada%'  THEN 'CA'
          WHEN ${TABLE}.countryLabel LIKE '%Australia%'  THEN 'AU'
          WHEN ${TABLE}.countryLabel LIKE '%United Kingdom%'  THEN 'GB'
          WHEN ${TABLE}.countryLabel LIKE '%New Zealand%'  THEN 'NZ'
          WHEN ${TABLE}.countryLabel LIKE '%Netherlands%'  THEN 'NL'
          WHEN ${TABLE}.countryLabel LIKE '%Ireland%'  THEN 'IE'
          WHEN ${TABLE}.countryLabel LIKE '%Germany%'  THEN 'DE'
          WHEN ${TABLE}.countryLabel LIKE '%Spain%'  THEN 'ES'
          WHEN ${TABLE}.countryLabel LIKE '%Austria%'  THEN 'AT'
          WHEN ${TABLE}.countryLabel LIKE '%Belgium%'  THEN 'BE'
          WHEN ${TABLE}.countryLabel LIKE '%Bulgaria%'  THEN 'BG'
          WHEN ${TABLE}.countryLabel LIKE '%Croatia%'  THEN 'HR'
          WHEN ${TABLE}.countryLabel LIKE '%Cyprus%'  THEN 'CY'
          WHEN ${TABLE}.countryLabel LIKE '%Czech Republic%'  THEN 'CZ'
          WHEN ${TABLE}.countryLabel LIKE '%Denmark%'  THEN 'DK'
          WHEN ${TABLE}.countryLabel LIKE '%Estonia%'  THEN 'EE'
          WHEN ${TABLE}.countryLabel LIKE '%Finland%'  THEN 'FI'
          WHEN ${TABLE}.countryLabel LIKE '%France%'  THEN 'FR'
          WHEN ${TABLE}.countryLabel LIKE '%Greece%'  THEN 'GR'
          WHEN ${TABLE}.countryLabel LIKE '%Hungary%'  THEN 'HU'
          WHEN ${TABLE}.countryLabel LIKE '%Italy%'  THEN 'IT'
          WHEN ${TABLE}.countryLabel LIKE '%Latvia%'  THEN 'LV'
          WHEN ${TABLE}.countryLabel LIKE '%Lithuania%'  THEN 'LT'
          WHEN ${TABLE}.countryLabel LIKE '%Luxembourg%'  THEN 'LU'
          WHEN ${TABLE}.countryLabel LIKE '%Poland%'  THEN 'PL'
          WHEN ${TABLE}.countryLabel LIKE '%Portugal%'  THEN 'PT'
          WHEN ${TABLE}.countryLabel LIKE '%Romania%'  THEN 'RO'
          WHEN ${TABLE}.countryLabel LIKE '%Slovakia%'  THEN 'SK'
          WHEN ${TABLE}.countryLabel LIKE '%Slovenia%'  THEN 'SI'
          WHEN ${TABLE}.countryLabel LIKE '%Sweden%'  THEN 'SE'
           WHEN ${TABLE}.countryLabel LIKE '%Singapore%'  THEN 'SG'
          WHEN ${TABLE}.countryLabel LIKE '%Switzerland%'  THEN 'SW'
          WHEN ${TABLE}.countryLabel LIKE '%Iceland%'  THEN 'IS'
          WHEN ${TABLE}.countryLabel LIKE '%Norway%'  THEN 'NO'
          WHEN ${TABLE}.countryLabel LIKE '%Liechtenstein%'  THEN 'LI'
          ELSE 'Not Serviceable'
    END;;
  }

  dimension: country_region {
    sql:
     CASE
          WHEN ${TABLE}.countryLabel LIKE '%United States%'  THEN 'US'
          WHEN ${TABLE}.countryLabel LIKE '%Canada%'  THEN 'CA'
          WHEN ${TABLE}.countryLabel LIKE '%Australia%'  THEN 'Oceania'
          WHEN ${TABLE}.countryLabel LIKE '%United Kingdom%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%New Zealand%'  THEN 'Oceania'
          WHEN ${TABLE}.countryLabel LIKE '%Netherlands%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Ireland%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Germany%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Spain%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Austria%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Belgium%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Bulgaria%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Croatia%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Cyprus%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Czech Republic%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Denmark%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Estonia%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Finland%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%France%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Greece%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Hungary%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Italy%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Latvia%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Lithuania%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Luxembourg%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Poland%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Portugal%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Romania%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Slovakia%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Slovenia%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Sweden%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Singapore%'  THEN 'Asia'
          WHEN ${TABLE}.countryLabel LIKE '%Switzerland%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Iceland%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Norway%'  THEN 'EU'
          WHEN ${TABLE}.countryLabel LIKE '%Liechtenstein%'  THEN 'EU'
          ELSE 'Not Serviceable'
    END;;
  }


  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.longitude ;;
  }
  }
