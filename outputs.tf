output "networkmanager_devices_id" {
  description = "Map of id values across all networkmanager_devices, keyed the same as var.networkmanager_devices"
  value       = { for k, v in aws_networkmanager_device.networkmanager_devices : k => v.id if v.id != null && length(v.id) > 0 }
}
output "networkmanager_devices_arn" {
  description = "Map of arn values across all networkmanager_devices, keyed the same as var.networkmanager_devices"
  value       = { for k, v in aws_networkmanager_device.networkmanager_devices : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "networkmanager_devices_aws_location" {
  description = "Map of aws_location values across all networkmanager_devices, keyed the same as var.networkmanager_devices"
  value       = { for k, v in aws_networkmanager_device.networkmanager_devices : k => one(v.aws_location) if v.aws_location != null && length(v.aws_location) > 0 }
}
output "networkmanager_devices_description" {
  description = "Map of description values across all networkmanager_devices, keyed the same as var.networkmanager_devices"
  value       = { for k, v in aws_networkmanager_device.networkmanager_devices : k => v.description if v.description != null && length(v.description) > 0 }
}
output "networkmanager_devices_global_network_id" {
  description = "Map of global_network_id values across all networkmanager_devices, keyed the same as var.networkmanager_devices"
  value       = { for k, v in aws_networkmanager_device.networkmanager_devices : k => v.global_network_id if v.global_network_id != null && length(v.global_network_id) > 0 }
}
output "networkmanager_devices_location" {
  description = "Map of location values across all networkmanager_devices, keyed the same as var.networkmanager_devices"
  value       = { for k, v in aws_networkmanager_device.networkmanager_devices : k => one(v.location) if v.location != null && length(v.location) > 0 }
}
output "networkmanager_devices_model" {
  description = "Map of model values across all networkmanager_devices, keyed the same as var.networkmanager_devices"
  value       = { for k, v in aws_networkmanager_device.networkmanager_devices : k => v.model if v.model != null && length(v.model) > 0 }
}
output "networkmanager_devices_serial_number" {
  description = "Map of serial_number values across all networkmanager_devices, keyed the same as var.networkmanager_devices"
  value       = { for k, v in aws_networkmanager_device.networkmanager_devices : k => v.serial_number if v.serial_number != null && length(v.serial_number) > 0 }
}
output "networkmanager_devices_site_id" {
  description = "Map of site_id values across all networkmanager_devices, keyed the same as var.networkmanager_devices"
  value       = { for k, v in aws_networkmanager_device.networkmanager_devices : k => v.site_id if v.site_id != null && length(v.site_id) > 0 }
}
output "networkmanager_devices_tags" {
  description = "Map of tags values across all networkmanager_devices, keyed the same as var.networkmanager_devices"
  value       = { for k, v in aws_networkmanager_device.networkmanager_devices : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "networkmanager_devices_tags_all" {
  description = "Map of tags_all values across all networkmanager_devices, keyed the same as var.networkmanager_devices"
  value       = { for k, v in aws_networkmanager_device.networkmanager_devices : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "networkmanager_devices_type" {
  description = "Map of type values across all networkmanager_devices, keyed the same as var.networkmanager_devices"
  value       = { for k, v in aws_networkmanager_device.networkmanager_devices : k => v.type if v.type != null && length(v.type) > 0 }
}
output "networkmanager_devices_vendor" {
  description = "Map of vendor values across all networkmanager_devices, keyed the same as var.networkmanager_devices"
  value       = { for k, v in aws_networkmanager_device.networkmanager_devices : k => v.vendor if v.vendor != null && length(v.vendor) > 0 }
}

