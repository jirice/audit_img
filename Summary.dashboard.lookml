- dashboard: Summary
  layout: newspaper
  elements:
  - name: Spend by Month
    label: Spend by Month
    model: imgworldwide_audit
    explore: data
    type: looker_column
    fields:
    - data.transaction_date_month
    - data.supplier_parent_count
    - data.selected_spend_metric
    fill_fields:
  #  - data.transaction_date_month
    sorts:
    - data.transaction_date_month
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: true
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
    series_types:
#       data.po_count: line
      data.supplier_parent_count: line
    x_axis_datetime_label: "%b-%y"
    x_axis_label_rotation: -45
    y_axis_labels:
    - Supplier Parent Count
    - Spend
    y_axis_orientation:
    - right
    - left
    series_labels:
      data.supplier_parent_count: Supplier Parent Count
#       data.po_spend: PO Spend
      data.selected_spend_metric: Spend
    y_axes:
    - label: Spend
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: "$#,##0,, \\M"
      series:
      - id: data.selected_spend_metric
        name: Spend
    - label: Supplier Parent Count
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: data.supplier_parent_count
        name: Supplier Parent Count
    row: 8
    col: 17
    width: 10
    height: 7
  - name: Spend by Category
    label: Spend by Category
    model: imgworldwide_audit
    explore: data
    type: looker_bar
    fields:
    - data.category
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
    row: 2
    col: 0
    width: 12
    height: 6
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
    col: 12
    width: 15
    height: 6
  # - name: PO COUNT - Single Value
  #   label: PO COUNT - Single Value
  #   model: imgworldwide_audit
  #   explore: data
  #   type: single_value
  #   fields:
  #   - data.po_count
  #   limit: 500
  #   column_limit: 50
  #   query_timezone: America/New_York
  #   custom_color_enabled: false
  #   custom_color: forestgreen
  #   show_single_value_title: true
  #   show_comparison: false
  #   comparison_type: value
  #   comparison_reverse_colors: false
  #   show_comparison_label: true
  #   stacking: ''
  #   show_value_labels: false
  #   label_density: 25
  #   legend_position: center
  #   x_axis_gridlines: false
  #   y_axis_gridlines: true
  #   show_view_names: true
  #   limit_displayed_rows: false
  #   y_axis_combined: true
  #   show_y_axis_labels: true
  #   show_y_axis_ticks: true
  #   y_axis_tick_density: default
  #   y_axis_tick_density_custom: 5
  #   show_x_axis_label: true
  #   show_x_axis_ticks: true
  #   x_axis_scale: auto
  #   y_axis_scale_mode: linear
  #   ordering: none
  #   show_null_labels: false
  #   show_totals_labels: false
  #   show_silhouette: false
  #   totals_color: "#808080"
  #   series_types: {}
  #   single_value_title: PO Count
  #   row: 0
  #   col: 12
  #   width: 4
  #   height: 2
  - name: Invoice Count - Single Value
    label: Invoice Count - Single Value
    model: imgworldwide_audit
    explore: data
    type: single_value
    fields:
    - data.invoice_count
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
    single_value_title: Invoice Count
    row: 0
    col: 16
    width: 4
    height: 2
  - name: Line Count - Single Value
    label: Line Count - Single Value
    model: imgworldwide_audit
    explore: data
    type: single_value
    fields:
    - data.count
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
    single_value_title: Line Count
    row: 0
    col: 20
    width: 4
    height: 2
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
    width: 4
    height: 2
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
    col: 8
    width: 4
    height: 2
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
  - name: business_unit
    label: business_unit
    model: imgworldwide_audit
    explore: data
    type: looker_pie
    fields:
    - data.business_unit
    - data.selected_spend_metric
    filters:
      data.business_unit: "-EMPTY"
    sorts:
    - data.selected_spend_metric desc
    limit: 50
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
    col: 7
    width: 10
    height: 7
  - name: business_unit_segment
    label: business_unit_segment
    model: imgworldwide_audit
    explore: data
    type: looker_pie
    fields:
    - data.business_unit_segment
    - data.selected_spend_metric
    filters:
      data.business_unit_segment: "-EMPTY"
    sorts:
    - data.selected_spend_metric desc
    limit: 50
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
    width: 7
    height: 7
  - name: Department Table
    label: Department Table
    model: imgworldwide_audit
    explore: data
    type: table
    fields:
    - data.business_unit_segment
    - data.selected_spend_metric
    filters:
      data.business_unit_segment: "-EMPTY"
    sorts:
    - data.selected_spend_metric desc
    limit: 50
    column_limit: 50
    query_timezone: America/New_York
    show_view_names: false
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
    value_labels: legend
    label_type: labPer
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
    row: 15
    col: 0
    width: 10
    height: 8
  - name: file_name
    label: file_name
    model: imgworldwide_audit
    explore: data
    type: table
    fields:
    - data.file_name
    - data.selected_spend_metric
    filters:
      data.file_name: "-EMPTY"
    sorts:
    - data.selected_spend_metric desc
    limit: 50
    column_limit: 50
    query_timezone: America/New_York
    show_view_names: false
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
    value_labels: legend
    label_type: labPer
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
    row: 15
    col: 10
    width: 13
    height: 8
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
  - name: Cat Lvl 1
    title: Cat Lvl 1
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.sourcing_group_level_1
    listens_to_filters: []
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
  # - name: Cat Lvl 5
  #   title: Cat Lvl 5
  #   type: field_filter
  #   default_value:
  #   model: imgworldwide_audit
  #   explore: data
  #   field: data.sourcing_group_level_5
  #   listens_to_filters:
  #   - Cat Lvl 2
  #   - Cat Lvl 1
  #   - Cat Lvl 3
  #   - Cat Lvl 4
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
  # - name: Cat Lvl 6
  #   title: Cat Lvl 6
  #   type: field_filter
  #   default_value:
  #   model: imgworldwide_audit
  #   explore: data
  #   field: data.sourcing_group_level_6
  #   listens_to_filters:
  #   - Cat Lvl 2
  #   - Cat Lvl 1
  #   - Cat Lvl 3
  #   - Cat Lvl 5
  #   - Cat Lvl 4
  - name: cost_center
    title: cost_center
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.cost_center
    listens_to_filters: []
  - name: Transaction Date
    title: Transaction Date
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_date
    listens_to_filters: []
  - name: Transaction Calendar Year
    title: Transaction Calendar Year
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_year
    listens_to_filters: []
  - name: Transaction Calendar Quarter
    title: Transaction Calendar Quarter
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_quarter_of_year
    listens_to_filters: []
  - name: Transaction Calendar Month
    title: Transaction Calendar Month
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_month_num
    listens_to_filters: []
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
  - name: Transaction Fiscal Month
    title: Transaction Fiscal Month
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.transaction_date_fiscal_month_num
    listens_to_filters: []
  - name: Spend Type
    title: Spend Type
    type: field_filter
    default_value: ''
    model: imgworldwide_audit
    explore: data
    field: data.select_spend_metric
    listens_to_filters: []
