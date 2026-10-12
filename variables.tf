variable "teams_lookup" {
  description = <<EOT
Map of teams_lookup, attributes below
Optional:
    - query
EOT

  type = map(object({
    query = optional(string)
  }))
}

