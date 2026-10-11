output "user_sshkeys_lookup_id" {
  description = "Map of id values across all user_sshkeys_lookup, keyed the same as var.user_sshkeys_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_user_sshkeys.user_sshkeys_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_sshkeys_lookup_keys" {
  description = "Map of keys values across all user_sshkeys_lookup, keyed the same as var.user_sshkeys_lookup except keys with no keys are omitted"
  value       = { for k, v in data.gitlab_user_sshkeys.user_sshkeys_lookup : k => v.keys if v.keys != null && length(v.keys) > 0 }
}
output "user_sshkeys_lookup_user_id" {
  description = "Map of user_id values across all user_sshkeys_lookup, keyed the same as var.user_sshkeys_lookup except keys with no user_id are omitted"
  value       = { for k, v in data.gitlab_user_sshkeys.user_sshkeys_lookup : k => v.user_id if v.user_id != null }
}
output "user_sshkeys_lookup_username" {
  description = "Map of username values across all user_sshkeys_lookup, keyed the same as var.user_sshkeys_lookup except keys with no username are omitted"
  value       = { for k, v in data.gitlab_user_sshkeys.user_sshkeys_lookup : k => v.username if v.username != null && length(v.username) > 0 }
}

