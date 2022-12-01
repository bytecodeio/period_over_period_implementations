## Period over Period Method 1: Use Looker's native date dimension groups
##
## Refined from:
##    -Molly Lippsett 2020, Methods for Period Over Period (PoP) Analysis in Looker,[LookML Example],https://community.looker.com/technical-tips-tricks-1021/methods-for-period-over-period-pop-analysis-in-looker-30823
##    -Llooker 2020, Lookml period over period analysis in different dialects, [views],https://github.com/llooker/period_over_period_analysis
##
## Created by: Carl Clifford - Bytecode IO
## Create Date: 11/29/2002
##
## Modified by:
## Modified Date:
## Comments:




include: "/views/order_items.view.lkml"


view: method1 {


  extends: [order_items]



 dimension: id {

  primary_key: yes
  hidden: yes
  type: number
  sql: ${TABLE}.id ;;
}

dimension: order_id {
  view_label: "_PoP"
  type: number
  sql: ${TABLE}.orders_id ;;
}

dimension_group: created {
  type: time
  view_label: "_PoP"
  timeframes: [
    raw,
    time,
    hour_of_day,
    date,
    day_of_week,
    day_of_week_index,
    day_of_month,
    day_of_year,
    week,
    week_of_year,
    month,
    month_name,
    month_num,
    quarter,
    year
  ]
  sql: ${TABLE}.created_at ;;
  convert_tz: no
}


#WTD, MTD and YTD filters

dimension: wtd_only {
  group_label: "To-Date Filters"
  label: "WTD"
  view_label: "_PoP"
  type: yesno
  sql:  (EXTRACT(DAYOFWEEK FROM ${created_raw}) < EXTRACT(DAYOFWEEK FROM CURRENT_DATE())
                OR
            (EXTRACT(DAYOFWEEK FROM ${created_raw}) = EXTRACT(DAYOFWEEK FROM CURRENT_DATE()) AND
            EXTRACT(HOUR FROM ${created_raw}) < EXTRACT(HOUR FROM CURRENT_TIME()))
                OR
            (EXTRACT(DAYOFWEEK FROM ${created_raw}) = EXTRACT(DAYOFWEEK FROM CURRENT_DATE()) AND
            EXTRACT(HOUR FROM ${created_raw}) <= EXTRACT(HOUR FROM CURRENT_TIME()) AND
            EXTRACT(MINUTE FROM ${created_raw}) < EXTRACT(MINUTE FROM CURRENT_TIME())))  ;;
}

dimension: mtd_only {
  group_label: "To-Date Filters"
  label: "MTD"
  view_label: "_PoP"
  type: yesno
  sql:  (EXTRACT(DAY FROM ${created_raw}) < EXTRACT(DAY FROM CURRENT_DATE())
                OR
            (EXTRACT(DAY FROM ${created_raw}) = EXTRACT(DAY FROM CURRENT_DATE()) AND
            EXTRACT(HOUR FROM ${created_raw}) < EXTRACT(HOUR FROM CURRENT_TIME()))
                OR
            (EXTRACT(DAY FROM ${created_raw}) = EXTRACT(DAY FROM CURRENT_DATE()) AND
            EXTRACT(HOUR FROM ${created_raw}) <= EXTRACT(HOUR FROM CURRENT_TIME()) AND
            EXTRACT(MINUTE FROM ${created_raw}) < EXTRACT(MINUTE FROM CURRENT_TIME())))  ;;
}

dimension: ytd_only {
  group_label: "To-Date Filters"
  label: "YTD"
  view_label: "_PoP"
  type: yesno
  sql:  (EXTRACT(DAYOFYEAR FROM ${created_raw}) < EXTRACT(DAYOFYEAR FROM CURRENT_DATE())
                OR
            (EXTRACT(DAYOFYEAR FROM ${created_raw}) = EXTRACT(DAYOFYEAR FROM CURRENT_DATE()) AND
            EXTRACT(HOUR FROM ${created_raw}) < EXTRACT(HOUR FROM CURRENT_TIME()))
                OR
            (EXTRACT(DAYOFYEAR FROM ${created_raw}) = EXTRACT(DAYOFYEAR FROM CURRENT_DATE()) AND
            EXTRACT(HOUR FROM ${created_raw}) <= EXTRACT(HOUR FROM CURRENT_TIME()) AND
            EXTRACT(MINUTE FROM ${created_raw}) < EXTRACT(MINUTE FROM CURRENT_TIME())))  ;;
}

dimension: sale_price {
  # not originally in the article
  view_label: "_PoP"
  sql: ${TABLE}.sale_price ;;
}

measure: count {
  label: "Count of order_items"
  type: count
  hidden: yes
}
measure: count_orders {
  label: "Count of orders"
  type: count_distinct
  sql: ${order_id} ;;
  hidden: yes
}

measure: total_sale_price {
  label: "Total Sales"
  view_label: "_PoP"
  type: sum
  sql: ${sale_price} ;;
  value_format_name: usd
  drill_fields: [created_date]
}
}
explore: method1 {
  label: "PoP Method 1: Use Looker's native date dimension groups"
}
