- dashboard: Executive_dashboard
  title: Executive Dashboard
  layout: newspaper
  elements:
  - name: Supplier Parent Count
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
    single_value_title: Supplier Parents
    row: 0
    col: 9
    width: 5
    height: 2
  - name: Spend by Classification
    label: Spend by Classification
    model: imgworldwide_audit
    explore: data
    type: looker_bar
    fields:
    - data.classification
    - data.selected_spend_metric
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
    x_axis_label: ''
    y_axis_labels:
    - Spend
    y_axis_value_format: "$#,##0,, \\M"
    label_value_format: "$#,##0.00,, \\M"
    row: 2
    col: 0
    width: 11
    height: 6
  - name: Dynamic Spend Metric
    label: Dynamic Spend Metric
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
    single_value_title: Spend
    value_format: "$#,##0"
    row: 0
    col: 4
    width: 5
    height: 2
  - name: Original Supplier Count Single Value
    label: Original Supplier Count Single Value
    model: imgworldwide_audit
    explore: data
    type: single_value
    fields:
    - data.original_supplier_count
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
    single_value_title: Original Suppliers
    row: 0
    col: 14
    width: 5
    height: 2
  - name: "%Classified Single Value"
    label: "%Classified Single Value"
    model: imgworldwide_audit
    explore: data
    type: single_value
    fields:
    - data.unclassified_count
    - data.classified_count
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: classified
      label: "%Classified"
      expression: sum(${data.classified_count})/(sum(${data.classified_count})+sum(${data.unclassified_count}))
      value_format:
      value_format_name: percent_1
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
    hidden_fields:
    - data.unclassified_count
    - data.classified_count
    series_types: {}
    single_value_title: Classification %
    row: 0
    col: 19
    width: 5
    height: 2
  - name: Spend by Classification Pie Chart
    label: Spend by Classification Pie Chart
    model: imgworldwide_audit
    explore: data
    type: looker_pie
    fields:
    - data.category
    - data.selected_spend_metric
    limit: 10
    column_limit: 50
    query_timezone: America/New_York
    value_labels: legend
    label_type: labPer
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
    row: 8
    col: 0
    width: 11
    height: 7
  - name: "%Compliance"
    title: "%Compliance"
    model: imgworldwide_audit
    explore: data
    type: looker_column
    fields: [data.transaction_date_month, data.selected_spend_metric, data.excluded]
    pivots: [data.excluded]
    sorts: [data.transaction_date_month desc, data.excluded desc]
    limit: 100
    column_limit: 10
    dynamic_fields:
    - table_calculation: percent_compliant
      label: Percent Compliant
      expression: |-
        coalesce(pivot_index(${data.selected_spend_metric},1),0)
        /
        (
          coalesce(pivot_index(${data.selected_spend_metric},1),0)
          +
          coalesce(pivot_index(${data.selected_spend_metric},2),0)
        )
      value_format:
      value_format_name: percent_1
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: circle
    interpolation: linear
    label: "%Compliance"
    query_timezone: America/New_York
    series_types:
      percent_compliant: line
    column_group_spacing_ratio:
    column_spacing_ratio:
    y_axis_labels: [Compliant Spend, Non Compliant Spend, "%Compliant"]
    y_axis_orientation: [left, left, right]
    series_labels:
      data.compliant_measure: Compliant Spend
      data.non_compliant_measure: Non Compliant Spend
      Yes - Other Selected Spend Metric: Compliant
      No - Other Selected Spend Metric: Non Compliant
    y_axes: [{label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: left,
      showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 7,
      type: linear, unpinAxis: false, valueFormat: "$#,##0,, \\M", series: [{id: 'Yes',
          name: 'Yes', __FILE: imgworldwide_audit/Executive_dashboard.dashboard.lookml,
          __LINE_NUM: 364}, {id: 'No', name: 'No', __FILE: imgworldwide_audit/Executive_dashboard.dashboard.lookml,
          __LINE_NUM: 366}], __FILE: imgworldwide_audit/Executive_dashboard.dashboard.lookml,
      __LINE_NUM: 352}, {label: !!null '', maxValue: 1, minValue: !!null '', orientation: right,
      showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 85,
      type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: percent_compliant,
          name: Percent Compliant}]}]
    y_axis_reversed: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    x_axis_reversed: false
    series_colors:
      Non-Compliant - Other Selected Spend Metric: "#bc0b19"
      Compliant - Other Selected Spend Metric: "#0d9d33"
      Yes - data.selected_spend_metric: "#2fbf22"
      No - data.selected_spend_metric: "#e9213f"
      percent_compliant: "#1b1919"
    trend_lines: []
    hidden_fields:
    reference_lines: []
    row: 8
    col: 11
    width: 13
    height: 7
  - name: Supplier Spend Heat Chart - Executive Dashboard
    label: Supplier Spend Heat Chart - Executive Dashboard
    model: imgworldwide_audit
    explore: data
    type: table
    fields:
    - spend_by_supplier.supplier_parent
    - data.transaction_date_fiscal_quarter
    # - data.ElectronicOrderType
    # - data.nonElectonicOrderType
    - data.supplier_spend_measure
    pivots:
    - data.transaction_date_fiscal_quarter
   # fill_fields:
  #  - data.transaction_date_fiscal_quarter
    sorts:
    - data.transaction_date_fiscal_quarter 0
    - data.supplier_spend_measure desc 0
    limit: 100
    column_limit: 50
    query_timezone: America/New_York
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields: []
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
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
    hidden_fields:
    - data.nonElectonicOrderType
    - data.ElectronicOrderType
    row: 15
    col: 0
    width: 24
    height: 8
  - name: Total Spend Single Value
    label: Total Spend Single Value
    model: imgworldwide_audit
    explore: data
    type: single_value
    fields:
    - data.total_spend
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
    single_value_title: Unfiltered Spend
    row: 0
    col: 0
    width: 4
    height: 2
  - name: Spend by Supplier - Top 10
    label: Spend by Supplier - Top 10
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
    row: 2
    col: 11
    width: 13
    height: 6
  filters:
  - name: Spend Type
    title: Spend Type
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.select_spend_metric
    listens_to_filters: []
  - name: Transaction Calendar Quarter
    title: Transaction Calendar Quarter
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_quarter_of_year
    listens_to_filters: []
  - name: Transaction Calendar Year
    title: Transaction Calendar Year
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_year
    listens_to_filters: []
  - name: Transaction Date
    title: Transaction Date
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_date
    listens_to_filters: []
  - name: cost_center
    title: cost_center
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.cost_center
    listens_to_filters: []
  - name: Transaction Calendar Month
    title: Transaction Calendar Month
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_month_num
    listens_to_filters: []
  - name: Cat Lvl 2
    title: Cat Lvl 2
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.sourcing_group_level_2
    listens_to_filters:
    - Cat Lvl 1
  - name: Cat Lvl 1
    title: Cat Lvl 1
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.sourcing_group_level_1
    listens_to_filters: []
  - name: Transaction Fiscal Month
    title: Transaction Fiscal Month
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_fiscal_month_num
    listens_to_filters: []
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
  - name: Transaction Fiscal Quarter
    title: Transaction Fiscal Quarter
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_fiscal_quarter_of_year
    listens_to_filters: []
  - name: Transaction Fiscal Year
    title: Transaction Fiscal Year
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_fiscal_year
    listens_to_filters: []
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
  # - name: Cat Lvl 6
  #   title: Cat Lvl 6
  #   type: field_filter
  #   default_value: ''
  #   model: imgworldwide_audit
  #   explore: data
  #   field: data.sourcing_group_level_6
  #   listens_to_filters:
  #   - Cat Lvl 1
  #   - Cat Lvl 2
  #   - Cat Lvl 3
  #   - Cat Lvl 4
  #   - Cat Lvl 5
  # - name: Cat Lvl 5
  #   title: Cat Lvl 5
  #   type: field_filter
  #   default_value: ''
  #   model: imgworldwide_audit
  #   explore: data
  #   field: data.sourcing_group_level_5
  #   listens_to_filters:
  #   - Cat Lvl 1
  #   - Cat Lvl 2
  #   - Cat Lvl 3
  #   - Cat Lvl 4
