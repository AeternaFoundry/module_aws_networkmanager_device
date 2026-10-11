variable "networkmanager_devices" {
  description = <<EOT
Map of networkmanager_devices, attributes below
Required:
    - global_network_id
Optional:
    - description
    - model
    - serial_number
    - site_id
    - tags
    - tags_all
    - type
    - vendor
    - aws_location (block):
        - subnet_arn (optional)
        - zone (optional)
    - location (block):
        - address (optional)
        - latitude (optional)
        - longitude (optional)
EOT

  type = map(object({
    global_network_id = string
    description       = optional(string)
    model             = optional(string)
    serial_number     = optional(string)
    site_id           = optional(string)
    tags              = optional(map(string))
    tags_all          = optional(map(string))
    type              = optional(string)
    vendor            = optional(string)
    aws_location = optional(object({
      subnet_arn = optional(string)
      zone       = optional(string)
    }))
    location = optional(object({
      address   = optional(string)
      latitude  = optional(string)
      longitude = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.networkmanager_devices : (
        v.model == null || (length(v.model) >= 0 && length(v.model) <= 128)
      )
    ])
    error_message = "must be between 0 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.networkmanager_devices : (
        v.serial_number == null || (length(v.serial_number) >= 0 && length(v.serial_number) <= 128)
      )
    ])
    error_message = "must be between 0 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.networkmanager_devices : (
        v.vendor == null || (length(v.vendor) >= 0 && length(v.vendor) <= 128)
      )
    ])
    error_message = "must be between 0 and 128 characters"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

