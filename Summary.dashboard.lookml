- dashboard: Summary
  layout: newspaper
  elements:
  - name: Profit Center
    label: Profit Center
    model: imgworldwide_audit
    explore: data
    type: looker_bar
    fields:
    - data.profit_center_description
    - data.total_spend
    sorts:
    - data.total_spend desc
    limit: 10
    column_limit: 50
    stacking: ''
    show_value_labels: true
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    colors:
    - 'palette: Mixed Dark'
    series_colors: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: "$#,##0,, \\M"
      series:
      - id: data.total_spend
        name: Data Total Spend
        __FILE: imgworldwide_audit/Summary.dashboard.lookml
        __LINE_NUM: 47
      __FILE: imgworldwide_audit/Summary.dashboard.lookml
      __LINE_NUM: 45
    listen: {}
    row: 26
    col: 0
    width: 9
    height: 8
  - name: Region
    label: Region
    model: imgworldwide_audit
    explore: data
    type: looker_pie
    fields:
    - data.total_spend
    - data.geographic_description
    sorts:
    - data.total_spend desc
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labVal
    stacking: ''
    show_value_labels: true
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    colors: 'palette: Looker Classic'
    series_colors: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: "$#,##0,, \\M"
      series:
      - id: data.total_spend
        name: Data Total Spend
        __FILE: imgworldwide_audit/Summary.dashboard.lookml
        __LINE_NUM: 94
      __FILE: imgworldwide_audit/Summary.dashboard.lookml
      __LINE_NUM: 92
    listen: {}
    row: 20
    col: 0
    width: 9
    height: 6
  - name: Company
    label: Company
    model: imgworldwide_audit
    explore: data
    type: looker_bar
    fields:
    - data.company_description
    - data.total_spend
    sorts:
    - data.total_spend desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: true
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: "$#,##0,, \\M"
      series:
      - id: data.total_spend
        name: Data Total Spend
        __FILE: imgworldwide_audit/Summary.dashboard.lookml
        __LINE_NUM: 130
      __FILE: imgworldwide_audit/Summary.dashboard.lookml
      __LINE_NUM: 128
    listen: {}
    row: 20
    col: 9
    width: 15
    height: 14
  - name: Business Area
    label: Business Area
    model: imgworldwide_audit
    explore: data
    type: looker_bar
    fields:
    - data.ba_description
    - data.total_spend
    sorts:
    - data.total_spend desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: true
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: "$#,##0,, \\M"
      series:
      - id: data.total_spend
        name: Data Total Spend
        __FILE: imgworldwide_audit/Summary.dashboard.lookml
        __LINE_NUM: 165
      __FILE: imgworldwide_audit/Summary.dashboard.lookml
      __LINE_NUM: 163
    font_size: 10px, 1em, 50%, etc.
    listen: {}
    row: 13
    col: 0
    width: 9
    height: 7
  - name: Cost Centers
    label: Cost Centers
    model: imgworldwide_audit
    explore: data
    type: single_value
    fields:
    - data.cost_center_count
    filters:
      data.cost_center: "-EMPTY"
    limit: 5000
    column_limit: 50
    total: true
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    single_value_title: Cost Centers
    listen: {}
    row: 0
    col: 12
    width: 6
    height: 2
  - name: UNSPSC Drill
    label: Business Unit Segment Chart
    model: imgworldwide_audit
    explore: data
    type: looker_bar
    fields:
    - data.total_spend
    - data.unspsc_level_1
    sorts:
    - data.total_spend desc
    limit: 50
    column_limit: 50
    stacking: ''
    show_value_labels: true
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    query_timezone: America/New_York
    value_labels: legend
    label_type: labPer
    series_types: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: "$#,##0,, \\M"
      series:
      - id: data.total_spend
        name: Data Total Spend
        __FILE: imgworldwide_audit/Summary.dashboard.lookml
        __LINE_NUM: 241
      __FILE: imgworldwide_audit/Summary.dashboard.lookml
      __LINE_NUM: 239
    listen: {}
    row: 2
    col: 9
    width: 15
    height: 11
  - name: GL Drill
    label: GL Drill
    model: imgworldwide_audit
    explore: data
    type: looker_bar
    fields:
    - data.gl_category_level_1
    - data.total_spend
    sorts:
    - data.total_spend desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: true
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: "$#,##0,, \\B"
      series:
      - id: data.total_spend
        name: Data Total Spend
        __FILE: imgworldwide_audit/Summary.dashboard.lookml
        __LINE_NUM: 277
      __FILE: imgworldwide_audit/Summary.dashboard.lookml
      __LINE_NUM: 275
    listen: {}
    row: 7
    col: 0
    width: 9
    height: 6
  - name: Business Areas
    label: Business Areas
    model: imgworldwide_audit
    explore: data
    type: single_value
    fields:
    - data.ba_description_count
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    single_value_title: Business Areas
    listen: {}
    row: 0
    col: 18
    width: 6
    height: 2
  - name: Sourcing drill
    label: Sourcing Drill
    model: imgworldwide_audit
    explore: data
    type: looker_bar
    fields:
    - data.sourcing_group_level_1
    - data.selected_spend_metric
    sorts:
    - data.selected_spend_metric desc
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    y_axis_value_format: "$#,##0,, \\M"
    label_value_format: "$#,##0,, \\M"
    listen: {}
    row: 2
    col: 0
    width: 9
    height: 5
  - name: Top suppliers(spend top down)
    label: Top suppliers(Spend Top Down)
    model: imgworldwide_audit
    explore: data
    type: looker_bar
    fields:
    - data.supplier_parent
    - data.selected_spend_metric
    sorts:
    - data.selected_spend_metric desc
    limit: 10
    column_limit: 50
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    label_value_format: "$#,##0.00,, \\M"
    y_axis_labels:
    - Spend
    y_axis_value_format: "$#,##0, \\K"
    y_axes:
    - label: Spend
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: "$#,##0,, \\M"
      series:
      - id: data.selected_spend_metric
        name: Selected Spend Metric
        __FILE: imgworldwide_audit/Summary.dashboard.lookml
        __LINE_NUM: 395
      __FILE: imgworldwide_audit/Summary.dashboard.lookml
      __LINE_NUM: 383
    listen: {}
    row: 13
    col: 9
    width: 15
    height: 7
  - name: Total spend Copy 2
    label: Total Spend
    model: imgworldwide_audit
    explore: data
    type: single_value
    fields:
    - data.selected_spend_metric
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    single_value_title: Total Spend
    value_format: "$#,##0"
    listen: {}
    row: 0
    col: 0
    width: 6
    height: 2
  - name: Supplier parent count Copy
    label: Supplier Parent Count
    model: imgworldwide_audit
    explore: data
    type: single_value
    fields:
    - data.supplier_parent_count
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    single_value_title: Suppliers
    listen: {}
    row: 0
    col: 6
    width: 6
    height: 2
  filters:
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
  - name: Cat Lvl 3
    title: Cat Lvl 3
    type: field_filter
    default_value:
    model: imgworldwide_audit
    explore: data
    field: data.sourcing_group_level_3
    listens_to_filters:
    - Cat Lvl 2
    - Cat Lvl 1
    allow_multiple_values: true
  - name: Cat Lvl 4
    title: Cat Lvl 4
    type: field_filter
    default_value:
    model: imgworldwide_audit
    explore: data
    field: data.sourcing_group_level_4
    listens_to_filters:
    - Cat Lvl 2
    - Cat Lvl 1
    - Cat Lvl 3
    allow_multiple_values: true
  - name: Transaction Date
    title: Transaction Date
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_date
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Calendar Year
    title: Transaction Calendar Year
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_year
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Calendar Quarter
    title: Transaction Calendar Quarter
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_quarter_of_year
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Calendar Month
    title: Transaction Calendar Month
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_month_num
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Fiscal Quarter
    title: Transaction Fiscal Quarter
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_fiscal_quarter_of_year
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Fiscal Year
    title: Transaction Fiscal Year
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_fiscal_year
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Fiscal Month
    title: Transaction Fiscal Month
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_fiscal_month_num
    listens_to_filters: []
    allow_multiple_values: true
  - name: Spend Type
    title: Spend Type
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.select_spend_metric
    listens_to_filters: []
    allow_multiple_values: true
