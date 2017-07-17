- dashboard: Data Load Summary
  layout: newspaper
  elements:
  - name: Time validation
    label: Time Validation
    title: Time Validation
    model: imgworldwide_audit
    explore: data
    type: table
    fields:
    - data.transaction_date_month
    - data.total_spend
    - data.count
    - data.original_supplier_count
    - data.supplier_count
    fill_fields:
    - data.transaction_date_month
    sorts:
    - data.transaction_date_month desc
    limit: 500
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 0
    col: 0
    width: 11
    height: 9
  - name: Top 10 normalized suppliers
    label: Top 10 Normalized Suppliers
    title: Top 10 Normalized Suppliers
    model: imgworldwide_audit
    explore: data
    type: table
    fields:
    - data.supplier_parent
    - data.total_spend
    - data.original_supplier_count
    - data.supplier_count
    - data.count
    sorts:
    - data.total_spend desc
    limit: 10
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 9
    col: 0
    width: 11
    height: 8
  - name: Top 10 classifications
    label: Top 10 Classifications
    title: Top 10 Classifications
    model: imgworldwide_audit
    explore: data
    type: table
    fields:
    - data.sourcing_group_level_4
    - data.total_spend
    - data.original_supplier_count
    - data.supplier_count
    - data.count
    sorts:
    - data.total_spend desc
    limit: 10
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 9
    col: 11
    width: 11
    height: 8
  - name: Input File Validation
    label: Input File Validation
    title: Input File Validation
    model: imgworldwide_audit
    explore: data
    type: table
    fields:
    - data.total_spend
    - data.count
    - data.original_supplier_count
    - data.supplier_count
    - data.file_name
    sorts:
    - data.total_spend desc
    limit: 500
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 0
    col: 11
    width: 11
    height: 5
  - name: Classification depth
    label: Classification Depth
    title: Classification Depth
    model: imgworldwide_audit
    explore: data
    type: table
    fields:
    - data.Unspsc_Classification_Depth
    - data.total_spend
    - data.original_supplier_count
    - data.supplier_count
    sorts:
    - data.total_spend desc
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: of_total_spend
      label: "% of Total Spend"
      expression: "${data.total_spend}/${data.total_spend:total}"
      value_format:
      value_format_name: percent_0
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 5
    col: 11
    width: 11
    height: 4
