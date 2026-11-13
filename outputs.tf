output "teams_lookup_id" {
  description = "Map of id values across all teams_lookup, keyed the same as var.teams_lookup"
  value       = { for k, v in data.pagerduty_teams.teams_lookup : k => v.id }
}
output "teams_lookup_query" {
  description = "Map of query values across all teams_lookup, keyed the same as var.teams_lookup"
  value       = { for k, v in data.pagerduty_teams.teams_lookup : k => v.query }
}
output "teams_lookup_teams" {
  description = "Map of teams values across all teams_lookup, keyed the same as var.teams_lookup"
  value       = { for k, v in data.pagerduty_teams.teams_lookup : k => v.teams }
}

