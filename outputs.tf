output "teams_lookup_id" {
  description = "Map of id values across all teams_lookup, keyed the same as var.teams_lookup except keys with no id are omitted"
  value       = { for k, v in data.pagerduty_teams.teams_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "teams_lookup_query" {
  description = "Map of query values across all teams_lookup, keyed the same as var.teams_lookup except keys with no query are omitted"
  value       = { for k, v in data.pagerduty_teams.teams_lookup : k => v.query if v.query != null && length(v.query) > 0 }
}
output "teams_lookup_teams" {
  description = "Map of teams values across all teams_lookup, keyed the same as var.teams_lookup except keys with no teams are omitted"
  value       = { for k, v in data.pagerduty_teams.teams_lookup : k => v.teams if v.teams != null && length(v.teams) > 0 }
}

