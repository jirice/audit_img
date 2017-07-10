- dashboard: Data_Breakouts
  layout: newspaper
  elements:
  - name: Cost Center
    label: Cost Center
    model: imgworldwide_audit
    explore: data
    type: table
    fields:
    - data.total_spend
    - data.cost_center
    filters:
      data.cost_center: "-EMPTY"
    sorts:
    - data.cost_center
    limit: 15
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
    value_labels: legend
    label_type: labPer
    show_null_points: true
    point_style: circle
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
        __FILE: imgworldwide_audit/data_breakouts.dashboard.lookml
        __LINE_NUM: 294
      __FILE: imgworldwide_audit/data_breakouts.dashboard.lookml
      __LINE_NUM: 292
    listen: {}
    row: 12
    col: 0
    width: 12
    height: 6
  - name: BA Description-Spend
    label: BA Description-Spend
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
    total: true
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
        __FILE: imgworldwide_audit/data_breakouts.dashboard.lookml
        __LINE_NUM: 243
      __FILE: imgworldwide_audit/data_breakouts.dashboard.lookml
      __LINE_NUM: 241
    listen: {}
    row: 6
    col: 12
    width: 12
    height: 6
  - name: Region-Spend
    label: Region-Spend
    model: imgworldwide_audit
    explore: data
    type: looker_pie
    fields:
    - data.total_spend
    - data.geographic_description
    sorts:
    - data.total_spend desc
    limit: 50
    column_limit: 50
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
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
        __FILE: imgworldwide_audit/data_breakouts.dashboard.lookml
        __LINE_NUM: 195
      __FILE: imgworldwide_audit/data_breakouts.dashboard.lookml
      __LINE_NUM: 193
    listen: {}
    row: 6
    col: 0
    width: 12
    height: 6
  - name: Quarterly-Spend
    label: Quarterly-Spend
    model: imgworldwide_audit
    explore: data
    type: looker_line
    fields:
    - data.total_spend
    - data.transaction_quarter
    fill_fields:
    - data.transaction_quarter
    sorts:
    - data.transaction_quarter desc
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    series_types: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: "$#,##0,, \\M"
      series:
      - id: data.total_spend
        name: Data Total Spend
        __FILE: imgworldwide_audit/data_breakouts.dashboard.lookml
        __LINE_NUM: 94
      __FILE: imgworldwide_audit/data_breakouts.dashboard.lookml
      __LINE_NUM: 92
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 6
  - name: Yearly-Spend
    label: Yearly-Spend
    model: imgworldwide_audit
    explore: data
    type: looker_line
    fields:
    - data.transaction_year
    - data.total_spend
    fill_fields:
    - data.transaction_year
    sorts:
    - data.transaction_year
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    series_types: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: "$#,##0,, \\M"
      series:
      - id: data.total_spend
        name: Data Total Spend
        __FILE: imgworldwide_audit/data_breakouts.dashboard.lookml
        __LINE_NUM: 145
      __FILE: imgworldwide_audit/data_breakouts.dashboard.lookml
      __LINE_NUM: 143
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 6
  - name: Monthly-Spend
    label: Monthly-Spend
    model: imgworldwide_audit
    explore: data
    type: looker_column
    fields:
    - data.transaction_month
    - data.total_spend
    fill_fields:
    - data.transaction_month
    filters:
      data.transaction_month: 2016/06/01 to 2017/05/31
    sorts:
    - data.transaction_month
    limit: 500
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
    x_axis_scale: ordinal
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
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: custom
      tickDensityCustom: 6
      type: linear
      unpinAxis: false
      valueFormat: 0,," "
      series:
      - id: data.total_spend
        name: Data Total Spend
        __FILE: imgworldwide_audit/data_breakouts.dashboard.lookml
        __LINE_NUM: 42
      __FILE: imgworldwide_audit/data_breakouts.dashboard.lookml
      __LINE_NUM: 40
    x_axis_datetime_label: "%b'%y"
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
  - name: Profit Center-Spend
    label: Profit Center-Spend
    model: imgworldwide_audit
    explore: data
    type: table
    fields:
    - data.profit_center_description
    - data.total_spend
    sorts:
    - data.total_spend desc
    limit: 500
    column_limit: 50
    total: true
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
    listen: {}
    row: 12
    col: 12
    width: 12
    height: 6
  - name: Data Source-Spend
    label: Data Source-Spend
    model: imgworldwide_audit
    explore: data
    type: looker_bar
    fields:
    - data.total_spend
    - data.source
    sorts:
    - data.total_spend desc
    limit: 500
    column_limit: 50
    total: true
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
        __FILE: imgworldwide_audit/data_breakouts.dashboard.lookml
        __LINE_NUM: 385
      __FILE: imgworldwide_audit/data_breakouts.dashboard.lookml
      __LINE_NUM: 383
    listen: {}
    row: 18
    col: 0
    width: 12
    height: 7
  - name: Region-Monthly_Spend
    label: Region-Monthly_Spend
    model: imgworldwide_audit
    explore: data
    type: looker_column
    fields:
    - data.geographic_description
    - data.transaction_date_fiscal_month_num
    - data.total_spend
    pivots:
    - data.transaction_date_fiscal_month_num
    fill_fields:
    - data.transaction_date_fiscal_month_num
    sorts:
    - data.total_spend desc 0
    - data.transaction_date_fiscal_month_num
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    series_types: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: "$#,##0,, \\M"
      series:
      - id: '1'
        name: '1'
      - id: '2'
        name: '2'
      - id: '3'
        name: '3'
      - id: '4'
        name: '4'
      - id: '5'
        name: '5'
      - id: '6'
        name: '6'
      - id: '7'
        name: '7'
      - id: '8'
        name: '8'
      - id: '9'
        name: '9'
      - id: '10'
        name: '10'
      - id: '11'
        name: '11'
      - id: '12'
        name: '12'
    listen: {}
    row: 25
    col: 0
    width: 24
    height: 7
  - name: File Name-Spend
    label: File Name-Spend
    model: imgworldwide_audit
    explore: data
    type: looker_pie
    fields:
    - data.total_spend
    - data.file_name
    sorts:
    - data.total_spend desc
    limit: 50
    column_limit: 50
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
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
        __FILE: imgworldwide_audit/data_breakouts.dashboard.lookml
        __LINE_NUM: 434
      __FILE: imgworldwide_audit/data_breakouts.dashboard.lookml
      __LINE_NUM: 432
    listen: {}
    row: 18
    col: 12
    width: 12
    height: 7
