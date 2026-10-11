variable "compute_preview_features" {
  description = <<EOT
Map of compute_preview_features, attributes below
Required:
    - activation_status
    - name
Optional:
    - project
    - rollout_operation (block):
        - rollout_input (optional, block):
            - predefined_rollout_plan (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    activation_status = string
    name              = string
    project           = optional(string)
    rollout_operation = optional(object({
      rollout_input = optional(object({
        predefined_rollout_plan = string
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

