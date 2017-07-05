view: spend_by_supplier {
    label: "Spend by Supplier"
    derived_table: {
      sql: SELECT
         supplier_name
        , supplier_parent
        ,sum(spend_amount) AS total_spend_amount
      FROM sr_img.report_staging_v2
      WHERE {% condition transaction_date %} sr_img.report_staging_v2.transaction_date {% endcondition %}
      GROUP BY 1,2
       ;;
    }

    filter: transaction_date {
      type: date
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }

    dimension: supplier_name {
      type: string
      sql: ${TABLE}.supplier_name ;;
    }

    dimension: supplier_parent {
      type: string
      sql: ${TABLE}.supplier_parent ;;
    }

    dimension: total_spend_amount {
      label: "Supplier Spend Amount"
      type: number
      sql: ${TABLE}.total_spend_amount ;;
    }

    dimension: total_spend_amount_rounded_K {
      label: "Supplier Spend Amount (K)"
      type: number
      sql: round(${TABLE}.total_spend_amount/1000) ;;
      value_format_name: usd_0
    }

    dimension: total_spend_amount_tier_K {
      label: "Supplier Spend Amount Tiers (K)"
      type: tier
      tiers: [1,2,3,4,5,6,7,8,9,10,15,20,50,100,200,500,1000,2000]
#     style: classic
#     style: interval
      style: integer
#     style: relational
      sql: ${total_spend_amount_rounded_K} ;;

    }

    dimension: total_spend_amount_tier {
      label: "Supplier Spend Amount Tiers"
      type: tier
      tiers: [1000, 10000, 100000, 1000000]
      style: integer
      sql: ${total_spend_amount} ;;
    }

    set: detail {
      fields: [supplier_name, total_spend_amount]
    }


  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: spend_by_supplier {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
