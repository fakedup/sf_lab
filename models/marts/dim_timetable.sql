{{ dbt_utils.date_spine(
    datepart="day",
    start_date = "cast('2000-01-01' as date)",
    end_date="CURRENT_DATE()"
   )
}}