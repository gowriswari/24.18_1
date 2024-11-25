---
- dashboard: qq
  title: qq
  layout: newspaper
  preferred_viewer: dashboards-next
  preferred_slug: S1SvS4KdubzT6nWPukWr0O
  elements:
  - title: qq
    name: qq
    model: datti1
    explore: users
    type: table
    fields: [users.gender, users.city, users.email, users.state]
    filters: {}
    sorts: [users.gender]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    listen:
      Gender: users.gender
      State: users.state
      City: users.city
    row:
    col:
    width:
    height:
  filters:
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: datti1
    explore: users
    listens_to_filters: []
    field: users.city
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: datti1
    explore: users
    listens_to_filters: []
    field: users.state
  - name: Gender
    title: Gender
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: datti1
    explore: users
    listens_to_filters: []
    field: users.gender
