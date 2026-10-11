resource "oci_metering_computation_usage_statement_email_recipients_group" "metering_computation_usage_statement_email_recipients_groups" {
  for_each = var.metering_computation_usage_statement_email_recipients_groups

  compartment_id            = each.value.compartment_id
  subscription_id           = each.value.subscription_id
  email_recipients_group_id = each.value.email_recipients_group_id

  dynamic "recipients_list" {
    for_each = each.value.recipients_list
    content {
      email_id   = recipients_list.value.email_id
      first_name = recipients_list.value.first_name
      last_name  = recipients_list.value.last_name
      state      = recipients_list.value.state
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

