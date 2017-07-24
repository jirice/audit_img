view: data {
  sql_table_name: sr_img.report_staging_v2 ;;

  dimension: account_document_number {
    type: string
    sql: ${TABLE}.account_document_number ;;
  }


dimension: Supplier
  {
    view_label: "Supplier"
    type: string

    sql:  CASE
            WHEN {% condition supplier_parent %} '' {% endcondition %}
              THEN ${supplier_parent}
            WHEN {% condition supplier_parent %} ${supplier_parent} {% endcondition %}
              THEN ${supplier_name}
          END;;
}

  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
  }

  dimension: ba_description {
    type: string
    sql: ${TABLE}.ba_description ;;
  }

  measure: ba_description_count {
    type: count_distinct
    sql: ${ba_description} ;;
  }

  dimension: business_area {
    type: string
    sql: ${TABLE}.business_area ;;
  }

  dimension: business_unit {
    type: string
    sql: ${TABLE}.business_unit ;;
  }

  dimension: business_unit_segment {
    type: string
    sql: ${TABLE}.business_unit_segment ;;
  }

  dimension: check_date {
    type: string
    sql: ${TABLE}.check_date ;;
  }

  dimension: check_number {
    type: string
    sql: ${TABLE}.check_number ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: company_description {
    type: string
    sql: ${TABLE}.company_description ;;
  }

  dimension: control_account_name {
    type: string
    sql: ${TABLE}.control_account_name ;;
  }

  dimension: cost_center {
    type: string
    sql: ${TABLE}.cost_center ;;
  }

  measure:cost_center_count {
    type: count_distinct
    sql: ${cost_center} ;;
  }

  dimension: cost_center_text {
    type: string
    sql: ${TABLE}.cost_center_text ;;
  }

  dimension: credit_amount {
    type: string
    sql: ${TABLE}.credit_amount ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.currency_code ;;
  }

  dimension: date_rank {
    type: string
    sql: ${TABLE}.date_rank ;;
  }

  dimension: debit_amount {
    type: string
    sql: ${TABLE}.debit_amount ;;
  }

  dimension: document_number {
    type: string
    sql: ${TABLE}.document_number ;;
  }

  dimension: due_date {
    type: string
    sql: ${TABLE}.due_date ;;
  }

  dimension: excluded {
    type: string
    sql: ${TABLE}.excluded ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.file_name ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.full_name ;;
  }

  dimension: geographic_description {
    type: string
    sql: ${TABLE}.geographic_description ;;
  }

  dimension: gl_account {
    type: string
    sql: ${TABLE}.gl_account ;;
  }

  dimension: gl_account_text {
    type: string
    sql: ${TABLE}.gl_account_text ;;
  }

  dimension: gl_category_full_code {
    type: string
    sql: ${TABLE}.gl_category_full_code ;;
  }

  dimension: gl_category_level_1 {
    type: string
    sql: ${TABLE}.gl_category_level_1 ;;
    drill_fields: [gl_category_level_2]
  }

  dimension: gl_category_level_2 {
    type: string
    sql: ${TABLE}.gl_category_level_2 ;;
    drill_fields: [gl_category_level_3]
  }

  dimension: gl_category_level_3 {
    type: string
    sql: ${TABLE}.gl_category_level_3 ;;
  }

  dimension_group: invoice_date {
    view_label: "Dates"
    type: time
    datatype: date
    timeframes: [date,
      month,
      month_num,
      quarter,
      quarter_of_year,
      year]
    sql: ${TABLE}.invoice_date ;;
  }

  dimension: invoice_number {
    type: string
    sql: ${TABLE}.invoice_number ;;
  }

  dimension: item_text {
    type: string
    sql: ${TABLE}.item_text ;;
  }

  dimension: month_filter {
    type: string
    sql: ${TABLE}.month_filter ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}.order_number ;;
  }

  dimension: order_text {
    type: string
    sql: ${TABLE}.order_text ;;
  }

  dimension: post_date {
    type: string
    sql: ${TABLE}.post_date ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: profit_center {
    type: string
    sql: ${TABLE}.profit_center ;;
  }

  dimension: profit_center_description {
    type: string
    sql: ${TABLE}.profit_center_description ;;
  }

  dimension: projection_number {
    type: string
    sql: ${TABLE}.projection_number ;;
  }

  dimension: projection_text {
    type: string
    sql: ${TABLE}.projection_text ;;
  }

  dimension: quarter_filter {
    type: string
    sql: ${TABLE}.quarter_filter ;;
  }

  dimension: rule_id {
    type: number
    sql: ${TABLE}.rule_id ;;
  }

  dimension: sic_code {
    type: string
    sql: ${TABLE}.sic_code ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  measure: spend_wme {
    label: " Spend-WME"
    type: sum
    sql: CASE WHEN ${TABLE}.source='WME' then ${TABLE}.spend_amount else null end ;;
  }

  measure: spend_sap {
    label: " Spend-SAP"
    type: sum
    sql: CASE WHEN ${TABLE}.source='SAP' then ${TABLE}.spend_amount else null end ;;
  }


  dimension: sourcing_group_level_1 {
    type: string
    sql: ${TABLE}.sourcing_group_level_1 ;;
    drill_fields: [sourcing_group_level_2]
#     link: {
#       label: "Link to Category Explore"
#       url: "/explore/imgworldwide_audit/data?fields=data.sourcing_group_level_1,data.supplier_parent_count,data.total_spend,&f[data.sourcing_group_level_1]={{ value }}"
#      "/explore/model/explore_name?fields=view.field_1,view.field_2,&f[view.filter_1]={{ value }}"
#     }

  }

  dimension: sourcing_group_level_2 {
    type: string
    sql: ${TABLE}.sourcing_group_level_2 ;;
    drill_fields: [sourcing_group_level_3]

  }

  dimension: sourcing_group_level_3 {
    type: string
    sql: ${TABLE}.sourcing_group_level_3 ;;
    drill_fields: [sourcing_group_level_4]

  }

  dimension: sourcing_group_level_4 {
    type: string
    sql: ${TABLE}.sourcing_group_level_4 ;;
  }

  dimension: spend_amount {
    type: number
    sql: ${TABLE}.spend_amount ;;
  }

  dimension: spend_id {
    type: number
    sql: ${TABLE}.spend_id ;;
  }

  dimension: supplier_address {
    type: string
    sql: ${TABLE}.supplier_address ;;
  }

  dimension: supplier_city {
    type: string
    sql: ${TABLE}.supplier_city ;;
  }

  dimension: supplier_country {
    type: string
    sql: ${TABLE}.supplier_country ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}.supplier_name ;;
    drill_fields: [supplier_parent]
  }

  dimension: supplier_parent {
    type: string
    sql: ${TABLE}.supplier_parent ;;
    drill_fields: [supplier_name]
  }

  dimension: supplier_region {
    type: string
    sql: ${TABLE}.supplier_region ;;
  }

  dimension: tax_id {
    type: string
    sql: ${TABLE}.tax_id ;;
  }

  dimension: total_usd {
    type: number
    sql: ${TABLE}.total_usd ;;
  }

  # dimension_group: transaction {
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   convert_tz: no
  #   sql: ${TABLE}.transaction_date ;;
  # }

  dimension: transaction_description_2 {
    type: string
    sql: ${TABLE}.transaction_description_2 ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.transaction_type ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}.unique_id ;;
  }

  dimension: unspsc_full_code {
    type: string
    sql: ${TABLE}.unspsc_full_code ;;
  }

  dimension: unspsc_level_1 {
    type: string
    drill_fields: [unspsc_level_2]
    sql: ${TABLE}.unspsc_level_1 ;;
#   link: {
#       label: "Link to Category Explore"
#       url: "/explore/imgworldwide_audit/data?fields=data.unspsc_level_1,data.total_spend,data.supplier_parent_count,data.count,data.invoice_count,data.source,&f[data.unspsc_level_1]={{ value }}"
#      "/explore/model/explore_name?fields=view.field_1,view.field_2,&f[view.filter_1]={{ value }}"
#     }
  }

  dimension: unspsc_level_2 {
    type: string
    drill_fields: [unspsc_level_3]
    sql: ${TABLE}.unspsc_level_2 ;;
  }

  dimension: unspsc_level_3 {
    type: string
    drill_fields: [unspsc_level_4]
    sql: ${TABLE}.unspsc_level_3 ;;
  }

  dimension: unspsc_level_4 {
    type: string
    sql: ${TABLE}.unspsc_level_4 ;;
  }

  dimension: vender_reference_document {
    type: string
    sql: ${TABLE}.vender_reference_document ;;
  }

  dimension: vendor_name {
    type: string
    sql: ${TABLE}.vendor_name ;;
  }

  dimension: vendor_number {
    type: string
    sql: ${TABLE}.vendor_number ;;
  }

  dimension: year_filter {
    type: string
    sql: ${TABLE}.year_filter ;;
  }

  measure: count {
    type: count
    drill_fields: [vendor_name, full_name, control_account_name, file_name, supplier_name]
  }

  measure: Timeframe {
    type: string
    sql:  CONCAT((CONCAT(TO_CHAR(min(${transaction_date_date}), 'Mon-YY'),' to ')),TO_CHAR(max(${transaction_date_date}), 'Mon-YY')) ;;

  }

  # dimension: category_code {
  #   view_label: "Taxonomies"
  #   type: string
  #   sql: ${TABLE}."category_code" ;;
  # }

  # dimension: category_description {
  #   view_label: "Taxonomies"
  #   type: string
  #   sql: ${TABLE}."category_description" ;;
  # }

  # Most projects go to Category 4.
  # Remove any unused category levels
  # Add neccessary catgory levels
  dimension: category {
    view_label: "Taxonomies"
    type: string
    sql:  CASE
            WHEN {% condition sourcing_group_level_1 %} '' {% endcondition %} THEN
              ${sourcing_group_level_1}
            WHEN {% condition sourcing_group_level_1 %} ${sourcing_group_level_1} {% endcondition %} THEN
              CASE
                WHEN {% condition sourcing_group_level_2 %} '' {% endcondition %} THEN
                  ${sourcing_group_level_2}
                WHEN {% condition sourcing_group_level_2 %} ${sourcing_group_level_2} {% endcondition %} THEN
                  CASE
                    WHEN {% condition sourcing_group_level_3 %} '' {% endcondition %} THEN
                      ${sourcing_group_level_3}
                    WHEN {% condition sourcing_group_level_3 %} ${sourcing_group_level_3} {% endcondition %} THEN
                      ${sourcing_group_level_4}

                           ELSE NULL
                  END
              END
          END;;
  }

#   dimension: category_level_1 {
#     view_label: "Taxonomies"
#     type: string
#     sql: ${TABLE}."category_level_1" ;;
#     drill_fields: [category_level_2]
#   }
#
#   dimension: category_level_2 {
#     view_label: "Taxonomies"
#     type: string
#     drill_fields: [category_level_3]
#     sql: ${TABLE}."category_level_2" ;;
#   }
#
#   dimension: category_level_3 {
#     view_label: "Taxonomies"
#     type: string
#     drill_fields: [category_level_4]
#     sql: ${TABLE}."category_level_3" ;;
#   }
#
#   dimension: category_level_4 {
#     view_label: "Taxonomies"
#     type: string
#     drill_fields: [category_level_5]
#     sql: ${TABLE}."category_level_4" ;;
#   }
#
#   dimension: category_level_5 {
#     view_label: "Taxonomies"
#     type: string
#     drill_fields: [category_level_6]
#     sql: ${TABLE}."category_level_5" ;;
#   }
#
#   dimension: category_level_6 {
#     view_label: "Taxonomies"
#     type: string
#     sql: ${TABLE}."category_level_6" ;;
#   }



  # dimension: po_account_description {
  #   view_label: "Account"
  #   label: "PO Account Description"
  #   type: string
  #   sql: ${TABLE}."po_account_description" ;;
  # }

  # Remove fiscal parameters if project does not use a fiscal calendar
  dimension_group: transaction_date {
    view_label: "Dates"
    label: "Transaction"
    type: time
    datatype: date
    timeframes: [date,
      month,
      month_num, fiscal_month_num,
      quarter, fiscal_quarter,
      quarter_of_year, fiscal_quarter_of_year,
      year, fiscal_year]
    sql: ${TABLE}.transaction_date ;;
    drill_fields: [transaction_date_month, transaction_date_quarter]
  }

  measure: total_spend_unfiltered {
    label: "Total Spend - All Data"
    type: sum
    sql: ${spend_amount} ;;
    value_format_name: usd_0
  }

  filter: select_one_metric {

    type: string
    suggestions: ["Supplier Count", "Invoice Line Count", "Invoice Count", "Invoice Spend","PO Line Count", "PO Count", "PO Spend", "Spend"]
    default_value: "PO Spend"
  }

  measure: selected_metric {

    type: number
    sql: CASE
          WHEN {% parameter select_one_metric %} = 'Supplier Count' THEN ${supplier_count}
          WHEN {% parameter select_one_metric %} = 'Invoice Line Count' THEN ${invoice_line_count}
          WHEN {% parameter select_one_metric %} = 'Invoice Count' THEN ${invoice_count}
          WHEN {% parameter select_one_metric %} = 'Invoice Spend' THEN ${invoice_spend}
          WHEN {% parameter select_one_metric %} = 'Spend' THEN ${total_spend}
          ELSE ${invoice_spend}
        END;;
  }

#   measure: po_count {
#     hidden: yes
#     view_label: "PO"
#     type: count_distinct
#     sql: ${po_number} ;;
#   }
#
#   dimension: has_po_number {
#     hidden: yes
#     view_label: "PO"
#     type: yesno
#     sql: ${po_number} != '';;
#   }

#   measure: po_line_count {
#     hidden: yes
#     view_label: "PO"
#     type: count
#     filters: {
#       field: has_po_number
#       value: "yes"
#     }
#   }

#   measure: po_spend {
#     type: sum
#     view_label: "PO"
#     sql: CASE
#                         WHEN ${po_number} != '' THEN ${spend_amount}
#                         ELSE 0
#                        END ;;
#     drill_fields: [category_level_1, category_level_2, category_level_3, po_spend]
#     value_format_name: usd_0
#   }

  measure: invoice_count {

    view_label: "Invoice"
    type: count_distinct
    sql: ${invoice_number} ;;
    value_format_name: decimal_0
  }

  dimension: has_invoice_number_no_po_number {
    hidden: yes
    view_label: "Invoice"
    type: yesno
    sql: ${invoice_number};;
  }

  measure: invoice_line_count {
    hidden: yes
    view_label: "Invoice"
    type: count
    filters: {
      field: has_invoice_number_no_po_number
      value: "yes"
    }
  }

  measure: invoice_spend {
    hidden: yes
    view_label: "Invoice"
    type: sum
    sql: ${spend_amount} ;;
    # value_format_name: usd_0
  }

  measure: supplier_count {
    view_label: "Supplier"
    hidden: yes
    type: count_distinct
    sql: ${supplier_parent} ;;
    # value_format_name: decimal_0
  }

  measure: original_supplier_count {
    view_label: "Supplier"
    hidden: yes
    type: count_distinct
    sql: ${TABLE}."supplier_name" ;;
  }

  measure:  supplier_parent_count {
    view_label: "Supplier"
    type:  count_distinct
    sql:  ${supplier_parent} ;;

  }

  measure: total_spend_this_month {
    type: sum
    sql: ${spend_amount} ;;
    filters: {
      field: transaction_date_date
      value: "this month"
    }
  }

  measure: total_spend_last_month {
    type: sum
    sql: ${spend_amount} ;;
    filters: {
      field: transaction_date_date
      value: "last month"
    }
  }

  measure: percent_spend_change_vs_last_month {
    type: number
    sql:  CASE
                            WHEN ${total_spend_last_month} is NULL THEN 0
                            ELSE (${total_spend_this_month} - ${total_spend_last_month})/${total_spend_last_month})
                          END ;;
    value_format_name: percent_2
  }



  measure: supplier_spend_measure  {
    view_label: "Supplier"
    type:  sum
    sql:  ${spend_amount};;
    value_format_name: usd_0
    drill_fields: [supplier_name]

  }

  measure: total_spend {
    type: sum
    sql: ${spend_amount} ;;
    value_format_name: usd_0
  }

  measure: total_spend_running_total {
    type: running_total
    sql: ${total_spend} ;;
    value_format_name: usd
  }

#   measure: count {
#     hidden: yes
#     type: count
#     drill_fields: [detail*]
#   }

  # ----- Sets of fields for drilling ------
#   set: detail {
#     fields: [vendor_name, approver_name, supplier_parent, supplier_name, name, buyer_name, department_name, spend_file_name]
#   }

  filter: select_spend_metric {
    # hidden: yes
    type: string
    suggestions: ["Invoice Spend", "PO Spend", "Total Spend"]
    default_value: "Total Spend"
  }

  measure: selected_spend_metric {

    type: number
    sql: CASE
          WHEN {% parameter select_spend_metric %} = 'Invoice Spend' THEN ${invoice_spend}

          WHEN {% parameter select_spend_metric %} = 'Total Spend' THEN ${total_spend}
          ELSE ${total_spend}
        END;;
    value_format_name: usd
  }

  dimension: unclassified_indicator {
    type: number
    view_label: "Taxonomies"
    sql: CASE
                        WHEN ${classification} = '' THEN 1
                        ELSE 0
                       END ;;
  }

  measure:  classified_count {
    view_label: "Taxonomies"
    type:  sum
    sql: ${classified_indicator} ;;
  }

  measure:  unclassified_count {
    view_label: "Taxonomies"
    type:  sum
    sql: ${unclassified_indicator} ;;
  }

  dimension: classified_indicator {
    view_label: "Taxonomies"
    type: number
    sql: CASE
                      WHEN ${classification} != '' THEN 1
                      ELSE 0
                     END ;;
  }

#   dimension: classification {
#     view_label: "Taxonomies"
#     type: string
#     sql: ${TABLE}.classification ;;
#     drill_fields: [sourcing_group_level_1, sourcing_group_level_2, sourcing_group_level_3, sourcing_group_level_4]
#   }

  dimension: classification {
    view_label: "Classification"
    label: " Classification"
    type: string
    drill_fields: [unspsc_level_1, unspsc_level_2, unspsc_level_3, unspsc_level_4]
    sql:case
        when ${TABLE}."unspsc_level_4" is not null then ${TABLE}."unspsc_level_4"
        when ${TABLE}."unspsc_level_4" is null and ${TABLE}."unspsc_level_3" is not null then ${TABLE}."unspsc_level_3"
        when ${TABLE}."unspsc_level_4" is null and ${TABLE}."unspsc_level_3" is null and ${TABLE}."unspsc_level_2" is not null then ${TABLE}."unspsc_level_2"
        when ${TABLE}."unspsc_level_4" is null and ${TABLE}."unspsc_level_3" is null and ${TABLE}."unspsc_level_2" is null and ${TABLE}."unspsc_level_1" is not null then ${TABLE}."unspsc_level_1"
        else null
        end;;
        }


  dimension: Unspsc_Classification_Depth {
    type: string
    sql: CASE WHEN  LEN(data."unspsc_full_code") = 2  THEN 'Level 1'
           WHEN LEN(data."unspsc_full_code") = 4  THEN 'Level 2'
           WHEN LEN(data."unspsc_full_code") = 6  THEN 'Level 3'
           WHEN LEN(data."unspsc_full_code") = 8  THEN 'Level 4'
           WHEN data."unspsc_full_code" = ''  THEN 'Unclassified'
      ELSE  data."unspsc_full_code"  END ;;

    }

  # measure: nonElectonicOrderType  {
  #   type:  sum
  #   sql: CASE WHEN ${TABLE}.transaction_type  !=''
  #     THEN 1 ELSE 0 END;;
  #   drill_fields: [source]
  # }

  # measure: ElectronicOrderType {
  #   type:  sum
  #   sql: CASE WHEN ${TABLE}.transaction_type  =''
  #     THEN 1 ELSE 0 END;;
  #   drill_fields: [transaction_type]
  # }

  # dimension: compliant {
  #   type: number
  #   sql: CASE
  #         WHEN ${compliant_raw} = 'Y' THEN 'Compliant'
  #         ELSE 'Non-Compliant'
  #       END ;;
  # }

  # dimension: compliant_raw {
  #   hidden: yes
  #   type: string
  #   sql: ${TABLE}.compliant ;;
  # }


}
