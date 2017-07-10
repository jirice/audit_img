- dashboard: Category Analysis
  layout: newspaper
  elements:
  - name: Classification
    label: Classification
    model: imgworldwide_audit
    explore: data
    type: table
    fields:
    - data.unspsc_level_1
    - data.total_spend
    - data.supplier_parent_count
    - data.count
    - data.invoice_count
    - data.source
    pivots:
    - data.source
    sorts:
    - data.unspsc_level_1
    - data.source
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: percent_total_spend
      label: Percent Total Spend
      expression: "${data.total_spend}/${data.total_spend:total}\n"
      value_format:
      value_format_name: percent_2
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
    series_types: {}
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_labels:
      data.supplier: Supplier
      data.total_spend: Spend
      data.supplier_parent_count: "# Suppliers"
      data.count: "# Lines"
      data.invoice_count: "# Invoices"
      percent_total_spend: "% Total"
    listen: {}
    row: 6
    col: 0
    width: 24
    height: 7
  - name: Supplier Grouping
    label: Supplier Grouping
    model: imgworldwide_audit
    explore: data
    type: table
    fields:
    - spend_by_supplier.supplier_parent
    - data.source
    - data.total_spend
    - data.count
    - data.invoice_count
    pivots:
    - data.source
    sorts:
    - data.total_spend desc 0
    - data.source
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: Percent_total_spend
      label: Percent Total Spend
      expression: "${data.total_spend}/${data.total_spend:total}"
      value_format:
      value_format_name: percent_2
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
    series_labels:
      data.supplier: Supplier
      data.total_spend: Spend
      data.supplier_parent_count: "# Suppliers"
      data.count: "# Lines"
      data.invoice_count: "# Invoices"
      Percent_total_spend: "% Total"
    listen: {}
    row:
    col:
    width:
    height:
