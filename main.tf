data "gitlab_user_sshkeys" "user_sshkeys_lookup" {
  for_each = var.user_sshkeys_lookup

  user_id  = each.value.user_id
  username = each.value.username
}

