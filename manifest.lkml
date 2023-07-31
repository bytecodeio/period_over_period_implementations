project_name: "period_over_period"

remote_dependency: looker_period_control {
  url: "https://github.com/Cold-Bore-Capital/looker_period_control.git"
  # Find the latest tag hash here https://github.com/Cold-Bore-Capital/looker_period_control/tags
  ref: "v1.1.7"
  override_constant: database_type {
    value: "bigquery"
  }
}
