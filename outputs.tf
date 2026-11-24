output "profile_session_attributes_id" {
  description = "Map of id values across all profile_session_attributes, keyed the same as var.profile_session_attributes"
  value       = { for k, v in britive_profile_session_attribute.profile_session_attributes : k => v.id }
}
output "profile_session_attributes_app_name" {
  description = "Map of app_name values across all profile_session_attributes, keyed the same as var.profile_session_attributes"
  value       = { for k, v in britive_profile_session_attribute.profile_session_attributes : k => v.app_name }
}
output "profile_session_attributes_attribute_name" {
  description = "Map of attribute_name values across all profile_session_attributes, keyed the same as var.profile_session_attributes"
  value       = { for k, v in britive_profile_session_attribute.profile_session_attributes : k => v.attribute_name }
}
output "profile_session_attributes_attribute_schema_id" {
  description = "Map of attribute_schema_id values across all profile_session_attributes, keyed the same as var.profile_session_attributes"
  value       = { for k, v in britive_profile_session_attribute.profile_session_attributes : k => v.attribute_schema_id }
}
output "profile_session_attributes_attribute_type" {
  description = "Map of attribute_type values across all profile_session_attributes, keyed the same as var.profile_session_attributes"
  value       = { for k, v in britive_profile_session_attribute.profile_session_attributes : k => v.attribute_type }
}
output "profile_session_attributes_attribute_value" {
  description = "Map of attribute_value values across all profile_session_attributes, keyed the same as var.profile_session_attributes"
  value       = { for k, v in britive_profile_session_attribute.profile_session_attributes : k => v.attribute_value }
}
output "profile_session_attributes_mapping_name" {
  description = "Map of mapping_name values across all profile_session_attributes, keyed the same as var.profile_session_attributes"
  value       = { for k, v in britive_profile_session_attribute.profile_session_attributes : k => v.mapping_name }
}
output "profile_session_attributes_profile_id" {
  description = "Map of profile_id values across all profile_session_attributes, keyed the same as var.profile_session_attributes"
  value       = { for k, v in britive_profile_session_attribute.profile_session_attributes : k => v.profile_id }
}
output "profile_session_attributes_profile_name" {
  description = "Map of profile_name values across all profile_session_attributes, keyed the same as var.profile_session_attributes"
  value       = { for k, v in britive_profile_session_attribute.profile_session_attributes : k => v.profile_name }
}
output "profile_session_attributes_transitive" {
  description = "Map of transitive values across all profile_session_attributes, keyed the same as var.profile_session_attributes"
  value       = { for k, v in britive_profile_session_attribute.profile_session_attributes : k => v.transitive }
}

