variable "metering_computation_usage_statement_email_recipients_groups" {
  description = <<EOT
Map of metering_computation_usage_statement_email_recipients_groups, attributes below
Required:
    - compartment_id
    - subscription_id
    - recipients_list (block):
        - email_id (required)
        - first_name (optional)
        - last_name (optional)
        - state (required)
Optional:
    - email_recipients_group_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id            = string
    subscription_id           = string
    email_recipients_group_id = optional(string)
    recipients_list = list(object({
      email_id   = string
      first_name = optional(string)
      last_name  = optional(string)
      state      = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.metering_computation_usage_statement_email_recipients_groups : (
        length(v.recipients_list) >= 1
      )
    ])
    error_message = "Each recipients_list list must contain at least 1 items"
  }
}

