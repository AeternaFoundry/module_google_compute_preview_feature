resource "google_compute_preview_feature" "compute_preview_features" {
  for_each = var.compute_preview_features

  activation_status = each.value.activation_status
  name              = each.value.name
  project           = each.value.project

  dynamic "rollout_operation" {
    for_each = each.value.rollout_operation != null ? [each.value.rollout_operation] : []
    content {
      dynamic "rollout_input" {
        for_each = rollout_operation.value.rollout_input != null ? [rollout_operation.value.rollout_input] : []
        content {
          predefined_rollout_plan = rollout_input.value.predefined_rollout_plan
        }
      }
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

