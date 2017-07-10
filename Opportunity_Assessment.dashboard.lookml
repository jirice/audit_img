- dashboard: Opportunity Assessment
  layout: newspaper
  elements:
  - name: Spend/Supplier Matrix by Category
    label: Spend/Supplier Matrix by Category
    model: imgworldwide_audit
    explore: data
    type: looker_scatter
    fields:
    - data.unspsc_level_1
    - data.total_spend
    - data.supplier_parent_count
    sorts:
    - data.total_spend desc
    limit: 50
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: linear
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    swap_axes: true
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: custom
      tickDensityCustom: 3
      type: linear
      unpinAxis: false
      valueFormat: "$#,##0,, \\M"
      series:
      - id: data.total_spend
        name: Data Total Spend
        __FILE: imgworldwide_audit/Opportunity_Assessment.dashboard.lookml
        __LINE_NUM: 42
      __FILE: imgworldwide_audit/Opportunity_Assessment.dashboard.lookml
      __LINE_NUM: 40
    x_axis_reversed: true
    hidden_fields:
    - data.unspsc_level_1
    y_axis_reversed: false
    hide_legend: false
    listen: {}
    row: 7
    col: 12
    width: 12
    height: 7
  - name: Comparative analysis
    label: Comparative Analysis
    model: imgworldwide_audit
    explore: data
    type: looker_column
    fields:
    - spend_by_supplier.total_spend_amount_tier
    - data.total_spend
    - data.supplier_parent_count
    sorts:
    - spend_by_supplier.total_spend_amount_tier
    limit: 100
    column_limit: 50
    dynamic_fields:
    - table_calculation: total_spend
      label: "% Total Spend"
      expression: "${data.total_spend}/sum(${data.total_spend})"
      value_format:
      value_format_name: percent_2
    - table_calculation: supplier_count
      label: "% Supplier Count"
      expression: "${data.supplier_parent_count}/sum(${data.supplier_parent_count})"
      value_format:
      value_format_name: percent_2
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: true
    label_density: 23
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
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
    show_null_points: true
    point_style: circle
    hidden_fields:
    - data.supplier_parent_count
    - data.total_spend
    series_types: {}
    label_rotation:
    label_value_format: "#.#%"
    listen: {}
    row: 0
    col: 0
    width: 12
    height: 7
  - name: Supplier count and invoice count by supplier spend
    label: Supplier Count and Invoice Count by Supplier Spend
    model: imgworldwide_audit
    explore: data
    type: looker_line
    fields:
    - spend_by_supplier.total_spend_amount_tier_K
    - data.supplier_parent_count
    - data.total_spend
    - data.invoice_count
    sorts:
    - spend_by_supplier.total_spend_amount_tier_K
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    y_axis_orientation:
    - left
    - right
    hidden_series: []
    hidden_fields:
    - data.total_spend
    series_labels:
      data.supplier_parent_count: Supplier Parent Count
    y_axis_labels:
    - Supplier Parent Count
    - Invoice Count
    listen: {}
    row: 0
    col: 12
    width: 12
    height: 7
  - name: 80/20 suppliers
    label: 80/20 Suppliers
    model: imgworldwide_audit
    explore: data
    type: table
    fields:
    - data.supplier_parent
    - data.total_spend
    - data.total_spend_running_total
    - data.total_spend_unfiltered
    sorts:
    - data.total_spend desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: cumulative_spend
      label: "% Cumulative Spend"
      expression: "${data.total_spend_running_total}/${data.total_spend_unfiltered}"
      value_format:
      value_format_name: percent_2
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - data.total_spend
    - data.total_spend_running_total
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    series_types: {}
    hidden_fields:
    - data.total_spend_unfiltered
    conditional_formatting:
    - type: between
      value:
      - '0'
      - '0.801'
      background_color: "#2fa02b"
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: imgworldwide_audit/Opportunity_Assessment.dashboard.lookml
        __LINE_NUM: 227
      bold: false
      italic: false
      strikethrough: false
      __FILE: imgworldwide_audit/Opportunity_Assessment.dashboard.lookml
      __LINE_NUM: 220
    listen: {}
    row: 7
    col: 0
    width: 12
    height: 7
  filters:
  - name: Cat Lvl 4
    title: Cat Lvl 4
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.sourcing_group_level_4
    listens_to_filters:
    - Cat Lvl 1
    - Cat Lvl 2
    - Cat Lvl 3
    allow_multiple_values: true
  - name: Cat Lvl 3
    title: Cat Lvl 3
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.sourcing_group_level_3
    listens_to_filters:
    - Cat Lvl 1
    - Cat Lvl 2
    allow_multiple_values: true
  - name: Cat Lvl 2
    title: Cat Lvl 2
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.sourcing_group_level_2
    listens_to_filters:
    - Cat Lvl 1
    allow_multiple_values: true
  - name: Cat Lvl 1
    title: Cat Lvl 1
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.sourcing_group_level_1
    listens_to_filters: []
    allow_multiple_values: true
