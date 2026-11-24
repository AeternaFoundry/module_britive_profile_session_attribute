variable "profile_session_attributes" {
  description = <<EOT
Map of profile_session_attributes, attributes below
Required:
    - mapping_name
    - profile_id
Optional:
    - app_name
    - attribute_name
    - attribute_schema_id
    - attribute_type
    - attribute_value
    - profile_name
    - transitive
EOT

  type = map(object({
    mapping_name        = string
    profile_id          = string
    app_name            = optional(string)
    attribute_name      = optional(string)
    attribute_schema_id = optional(string)
    attribute_type      = optional(string)
    attribute_value     = optional(string)
    profile_name        = optional(string)
    transitive          = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.profile_session_attributes : (
        length(v.profile_id) >= 1
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.profile_session_attributes : (
        v.attribute_type == null || (contains(["Static", "Identity"], v.attribute_type))
      )
    ])
    error_message = "must be one of: \"Static\", \"Identity\""
  }
  validation {
    condition = alltrue([
      for k, v in var.profile_session_attributes : (
        length(v.mapping_name) >= 1
      )
    ])
    error_message = "must not be empty"
  }
}

