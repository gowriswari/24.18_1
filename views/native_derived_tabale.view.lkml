view: native_derived_table {
  derived_table: {
    sql: SELECT
          users.email  AS `users.email`,
          users.id  AS `users.id`,
          users.state  AS `users.state`
      FROM demo_db.users  AS users
      WHERE {% condition users_city %} users.city {% endcondition %} AND (users.city ) IN ('Abbeville', 'Ada')
      ORDER BY
          1
      LIMIT 500 ;;
  }
  filter: users_city {
    type: string
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: users_email {
    type: string
    sql: ${TABLE}.`users.email` ;;
  }

  dimension: users_id {
    type: number
    sql: ${TABLE}.`users.id` ;;
  }

  dimension: users_state {
    type: string
    sql: ${TABLE}.`users.state` ;;
  }

  set: detail {
    fields: [
      users_email,
      users_id,
      users_state
    ]
  }
}
