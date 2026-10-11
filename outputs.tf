output "metering_computation_usage_statement_email_recipients_groups_id" {
  description = "Map of id values across all metering_computation_usage_statement_email_recipients_groups, keyed the same as var.metering_computation_usage_statement_email_recipients_groups except keys with no id are omitted"
  value       = { for k, v in oci_metering_computation_usage_statement_email_recipients_group.metering_computation_usage_statement_email_recipients_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "metering_computation_usage_statement_email_recipients_groups_compartment_id" {
  description = "Map of compartment_id values across all metering_computation_usage_statement_email_recipients_groups, keyed the same as var.metering_computation_usage_statement_email_recipients_groups except keys with no compartment_id are omitted"
  value       = { for k, v in oci_metering_computation_usage_statement_email_recipients_group.metering_computation_usage_statement_email_recipients_groups : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "metering_computation_usage_statement_email_recipients_groups_email_recipients_group_id" {
  description = "Map of email_recipients_group_id values across all metering_computation_usage_statement_email_recipients_groups, keyed the same as var.metering_computation_usage_statement_email_recipients_groups except keys with no email_recipients_group_id are omitted"
  value       = { for k, v in oci_metering_computation_usage_statement_email_recipients_group.metering_computation_usage_statement_email_recipients_groups : k => v.email_recipients_group_id if v.email_recipients_group_id != null && length(v.email_recipients_group_id) > 0 }
}
output "metering_computation_usage_statement_email_recipients_groups_recipients_list" {
  description = "Map of recipients_list values across all metering_computation_usage_statement_email_recipients_groups, keyed the same as var.metering_computation_usage_statement_email_recipients_groups except keys with no recipients_list are omitted"
  value       = { for k, v in oci_metering_computation_usage_statement_email_recipients_group.metering_computation_usage_statement_email_recipients_groups : k => v.recipients_list if v.recipients_list != null && length(v.recipients_list) > 0 }
}
output "metering_computation_usage_statement_email_recipients_groups_state" {
  description = "Map of state values across all metering_computation_usage_statement_email_recipients_groups, keyed the same as var.metering_computation_usage_statement_email_recipients_groups except keys with no state are omitted"
  value       = { for k, v in oci_metering_computation_usage_statement_email_recipients_group.metering_computation_usage_statement_email_recipients_groups : k => v.state if v.state != null && length(v.state) > 0 }
}
output "metering_computation_usage_statement_email_recipients_groups_subscription_id" {
  description = "Map of subscription_id values across all metering_computation_usage_statement_email_recipients_groups, keyed the same as var.metering_computation_usage_statement_email_recipients_groups except keys with no subscription_id are omitted"
  value       = { for k, v in oci_metering_computation_usage_statement_email_recipients_group.metering_computation_usage_statement_email_recipients_groups : k => v.subscription_id if v.subscription_id != null && length(v.subscription_id) > 0 }
}

