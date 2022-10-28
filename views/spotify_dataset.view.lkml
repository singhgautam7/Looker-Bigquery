# The name of this view in Looker is "Spotify Dataset"
view: spotify_dataset {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_spotify_dataset.spotify_dataset`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acousticness" in Explore.

  dimension: acousticness {
    type: number
    sql: ${TABLE}.acousticness ;;
  }

  dimension: album_name {
    type: string
    sql: ${TABLE}.album_name ;;
  }

  dimension: artists {
    type: string
    sql: ${TABLE}.artists ;;
  }

  dimension: danceability {
    type: number
    sql: ${TABLE}.danceability ;;
  }

  dimension: duration_ms {
    type: number
    sql: ${TABLE}.duration_ms ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_duration_ms {
    type: sum
    sql: ${duration_ms} ;;
  }

  measure: average_duration_ms {
    type: average
    sql: ${duration_ms} ;;
  }

  dimension: energy {
    type: number
    sql: ${TABLE}.energy ;;
  }

  dimension: explicit {
    type: yesno
    sql: ${TABLE}.explicit ;;
  }

  dimension: instrumentalness {
    type: number
    sql: ${TABLE}.instrumentalness ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: key {
    type: number
    sql: ${TABLE}.key ;;
  }

  dimension: liveness {
    type: number
    sql: ${TABLE}.liveness ;;
  }

  dimension: loudness {
    type: number
    sql: ${TABLE}.loudness ;;
  }

  dimension: mode {
    type: number
    sql: ${TABLE}.mode ;;
  }

  dimension: popularity {
    type: number
    sql: ${TABLE}.popularity ;;
  }

  dimension: speechiness {
    type: number
    sql: ${TABLE}.speechiness ;;
  }

  dimension: tempo {
    type: number
    sql: ${TABLE}.tempo ;;
  }

  dimension: time_signature {
    type: number
    sql: ${TABLE}.time_signature ;;
  }

  dimension: track_genre {
    type: string
    sql: ${TABLE}.track_genre ;;
  }

  dimension: track_id {
    type: string
    sql: ${TABLE}.track_id ;;
  }

  dimension: track_name {
    type: string
    sql: ${TABLE}.track_name ;;
  }

  dimension: valence {
    type: number
    sql: ${TABLE}.valence ;;
  }

  measure: count {
    type: count
    drill_fields: [album_name, track_name]
  }
}
