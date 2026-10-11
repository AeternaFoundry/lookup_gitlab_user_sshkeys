variable "user_sshkeys_lookup" {
  description = <<EOT
Map of user_sshkeys_lookup, attributes below
Optional:
    - user_id
    - username
EOT

  type = map(object({
    user_id  = optional(number)
    username = optional(string)
  }))
}

