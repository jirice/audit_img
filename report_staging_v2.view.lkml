view: report_staging_v2 {
  sql_table_name: sr_img.report_staging_v2 ;;

  dimension: account_document_number {
    type: string
    sql: ${TABLE}.account_document_number ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
  }

  dimension: ba_description {
    type: string
    sql: ${TABLE}.ba_description ;;
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
  }

  dimension: gl_category_level_2 {
    type: string
    sql: ${TABLE}.gl_category_level_2 ;;
  }

  dimension: gl_category_level_3 {
    type: string
    sql: ${TABLE}.gl_category_level_3 ;;
  }

  dimension: invoice_date {
    type: string
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

  dimension: sourcing_group_level_1 {
    type: string
    sql: ${TABLE}.sourcing_group_level_1 ;;
  }

  dimension: sourcing_group_level_2 {
    type: string
    sql: ${TABLE}.sourcing_group_level_2 ;;
  }

  dimension: sourcing_group_level_3 {
    type: string
    sql: ${TABLE}.sourcing_group_level_3 ;;
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
  }

  dimension: supplier_parent {
    type: string
    sql: ${TABLE}.supplier_parent ;;
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

  dimension_group: transaction {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    sql: ${TABLE}.transaction_date ;;
  }

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
    sql: ${TABLE}.unspsc_level_1 ;;
  }

  dimension: unspsc_level_2 {
    type: string
    sql: ${TABLE}.unspsc_level_2 ;;
  }

  dimension: unspsc_level_3 {
    type: string
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
}
