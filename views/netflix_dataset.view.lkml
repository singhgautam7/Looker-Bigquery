# The name of this view in Looker is "Netflix Dataset"
view: netflix_dataset {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `learn-looker-bq.looker_spotify_dataset.netflix_dataset`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cast" in Explore.

  dimension: cast {
    type: string
    sql: ${TABLE}.`cast` ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: date_added {
    type: string
    sql: ${TABLE}.date_added ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: director {
    type: string
    sql: ${TABLE}.director ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}.duration ;;
  }

  dimension: listed_in {
    type: string
    sql: ${TABLE}.listed_in ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}.rating ;;
  }

  dimension: release_year {
    type: number
    sql: ${TABLE}.release_year ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_release_year {
    type: sum
    sql: ${release_year} ;;
  }

  measure: average_release_year {
    type: average
    sql: ${release_year} ;;
  }

  dimension: show_id {
    type: string
    sql: ${TABLE}.show_id ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
