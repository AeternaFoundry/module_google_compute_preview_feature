output "compute_preview_features_id" {
  description = "Map of id values across all compute_preview_features, keyed the same as var.compute_preview_features except keys with no id are omitted"
  value       = { for k, v in google_compute_preview_feature.compute_preview_features : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_preview_features_activation_status" {
  description = "Map of activation_status values across all compute_preview_features, keyed the same as var.compute_preview_features except keys with no activation_status are omitted"
  value       = { for k, v in google_compute_preview_feature.compute_preview_features : k => v.activation_status if v.activation_status != null && length(v.activation_status) > 0 }
}
output "compute_preview_features_name" {
  description = "Map of name values across all compute_preview_features, keyed the same as var.compute_preview_features except keys with no name are omitted"
  value       = { for k, v in google_compute_preview_feature.compute_preview_features : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_preview_features_project" {
  description = "Map of project values across all compute_preview_features, keyed the same as var.compute_preview_features except keys with no project are omitted"
  value       = { for k, v in google_compute_preview_feature.compute_preview_features : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_preview_features_rollout_operation" {
  description = "Map of rollout_operation values across all compute_preview_features, keyed the same as var.compute_preview_features except keys with no rollout_operation are omitted"
  value       = { for k, v in google_compute_preview_feature.compute_preview_features : k => one(v.rollout_operation) if v.rollout_operation != null && length(v.rollout_operation) > 0 }
}

