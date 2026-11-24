resource "britive_profile_session_attribute" "profile_session_attributes" {
  for_each = var.profile_session_attributes

  mapping_name        = each.value.mapping_name
  profile_id          = each.value.profile_id
  app_name            = each.value.app_name
  attribute_name      = each.value.attribute_name
  attribute_schema_id = each.value.attribute_schema_id
  attribute_type      = each.value.attribute_type
  attribute_value     = each.value.attribute_value
  profile_name        = each.value.profile_name
  transitive          = each.value.transitive
}

