data "pagerduty_teams" "teams_lookup" {
  for_each = var.teams_lookup

  query = each.value.query
}

