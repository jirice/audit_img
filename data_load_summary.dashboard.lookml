- dashboard: Data Load Summary
  layout: newspaper
  elements:
  - name: Time validation
    label: Time Validation
    title: Time Validation
    model: WMEIMG
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
    model: WMEIMG
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
    model: WMEIMG
    explore: data
    type: table
    fields: [data.total_spend, data.original_supplier_count, data.supplier_count, data.count,
      data.unspsc_level_4]
    sorts: [data.total_spend desc]
    limit: 10
    column_limit: 50
    label: Top 10 Classifications
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
    model: WMEIMG
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
    model: WMEIMG
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
  filters:
  - name: Cat Lvl 2
    title: Cat Lvl 2
    type: field_filter
    default_value: ''
    model: WMEIMG
    explore: data
    field: data.sourcing_group_level_2
    listens_to_filters:
    - Cat Lvl 1
    allow_multiple_values: true
  - name: Cat Lvl 1
    title: Cat Lvl 1
    type: field_filter
    default_value: ''
    model: WMEIMG
    explore: data
    field: data.sourcing_group_level_1
    listens_to_filters: []
    allow_multiple_values: true
  - name: Cat Lvl 3
    title: Cat Lvl 3
    type: field_filter
    default_value:
    model: WMEIMG
    explore: data
    field: data.sourcing_group_level_3
    listens_to_filters:
    - Cat Lvl 2
    - Cat Lvl 1
    allow_multiple_values: true
  # - name: Cat Lvl 5
  #   title: Cat Lvl 5
  #   type: field_filter
  #   default_value:
  #   model: WMEIMG
  #   explore: data
  #   field: data.sourcing_group_level_5
  #   listens_to_filters:
  #   - Cat Lvl 2
  #   - Cat Lvl 1
  #   - Cat Lvl 3
  #   - Cat Lvl 4
  #   allow_multiple_values: true
  - name: Cat Lvl 4
    title: Cat Lvl 4
    type: field_filter
    default_value:
    model: WMEIMG
    explore: data
    field: data.sourcing_group_level_4
    listens_to_filters:
    - Cat Lvl 2
    - Cat Lvl 1
    - Cat Lvl 3
    allow_multiple_values: true
  # - name: Cat Lvl 6
  #   title: Cat Lvl 6
  #   type: field_filter
  #   default_value:
  #   model: WMEIMG
  #   explore: data
  #   field: data.sourcing_group_level_6
  #   listens_to_filters:
  #   - Cat Lvl 2
  #   - Cat Lvl 1
  #   - Cat Lvl 3
  #   - Cat Lvl 5
  #   - Cat Lvl 4
  #   allow_multiple_values: true
  - name: Data Source
    title: Data Source
    type: field_filter
    default_value: ''
    model: WMEIMG
    explore: data
    field: data.source
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Date
    title: Transaction Date
    type: field_filter
    default_value: ''
    model: WMEIMG
    explore: data
    field: data.transaction_date_date
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Calendar Year
    title: Transaction Calendar Year
    type: field_filter
    default_value: ''
    model: WMEIMG
    explore: data
    field: data.transaction_date_year
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Calendar Quarter
    title: Transaction Calendar Quarter
    type: field_filter
    default_value: ''
    model: WMEIMG
    explore: data
    field: data.transaction_date_quarter_of_year
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Calendar Month
    title: Transaction Calendar Month
    type: field_filter
    default_value: ''
    model: WMEIMG
    explore: data
    field: data.transaction_date_month_num
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Fiscal Quarter
    title: Transaction Fiscal Quarter
    type: field_filter
    default_value: ''
    model: WMEIMG
    explore: data
    field: data.transaction_date_fiscal_quarter_of_year
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Fiscal Year
    title: Transaction Fiscal Year
    type: field_filter
    default_value: ''
    model: WMEIMG
    explore: data
    field: data.transaction_date_fiscal_year
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Fiscal Month
    title: Transaction Fiscal Month
    type: field_filter
    default_value: ''
    model: WMEIMG
    explore: data
    field: data.transaction_date_fiscal_month_num
    listens_to_filters: []
    allow_multiple_values: true
  - name: Spend Type
    title: Spend Type
    type: field_filter
    default_value: ''
    model: WMEIMG
    explore: data
    field: data.select_spend_metric
    listens_to_filters: []
    allow_multiple_values: true
