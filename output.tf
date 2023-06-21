### [BEGIN] outptut.tf ###
output "id" {
  description = <<EOD
  [Output] The ID of the Network Interface.
  EOD
  value       = join("", azurerm_network_interface.this.*.id)
}

output "applied_dns_servers" {
  description = <<EOD
  [Output] List of DNS servers applied to the specified Network Interface.
  EOD
  value       = concat(azurerm_network_interface.this.*.applied_dns_servers)
}

output "enable_accelerated_networking" {
  description = <<EOD
  [Output] Indicates if accelerated networking is set on the specified Network Interface.
  EOD
  value       = join("", azurerm_network_interface.this.*.enable_accelerated_networking)
}

output "enable_ip_forwarding" {
  description = <<EOD
  [Output] Indicate if IP forwarding is set on the specified Network Interface.
  EOD
  value       = join("", azurerm_network_interface.this.*.enable_ip_forwarding)
}

output "dns_servers" {
  description = <<EOD
  [Output] The list of DNS servers used by the specified Network Interface.
  EOD
  value       = concat(azurerm_network_interface.this.*.dns_servers)
}

output "internal_dns_label_name" {
  description = <<EOD
  [Output] The internal DNS name label of the specified Network Interface.
  EOD
  value       = join("", azurerm_network_interface.this.*.internal_dns_name_label)
}

output "location" {
  description = <<EOD
  [Output] The location of the specified Network Interface.
  EOD
  value       = join("", azurerm_network_interface.this.*.location)
}

output "mac_address" {
  description = <<EOD
  [Output] The MAC address used by the specified Network Interface.
  EOD
  value       = join("", azurerm_network_interface.this.*.mac_address)
}

output "network_security_group_id" {
  description = <<EOD
  [Output] The ID of the network security group associated to the specified Network Interface.
  EOD
  value       = join("", azurerm_network_interface.this.*.network_security_group_id)
}

output "private_ip_address" {
  description = <<EOD
  [Output] The primary private IP address associated to the specified Network Interface.
  EOD
  value       = join("", azurerm_network_interface.this.*.private_ip_address)
}

output "private_ip_addresses" {
  description = <<EOD
  [Output] The list of private IP addresses associates to the specified Network Interface.
  EOD
  value       = concat(azurerm_network_interface.this.*.private_ip_addresses)
}

output "ip_configation" {
  description = <<EOD
  [Output] ip_configuration block as defined in the azurerm_network_interface resource.
  EOD
  value       = join("", azurerm_network_interface.this.*.ip_configuration)
}

output "tags" {
  description = <<EOD
  [Output] List the tags associated to the specified Network Interface.
  EOD
  value       = join("", azurerm_network_interface.this.*.tags)
}
### [END] output.tf ###