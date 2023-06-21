### [BEGIN] variables.tf ###
variable "resource_group_name" {
  description = <<EOD
  [Optional] The name of an existing resource group in which to provision the virtual network. If ommitted, a new resource group will be created.
  EOD
  type        = string
  default     = null
}

variable "ip_configuration" {
  description = <<EOD
  [Optional] Network interface IP configuration. Changing this forces a new resource to be created.
  EOD
  type = object({
    name                          = optional(string)
    subnet_id                     = optional(string)
    private_ip_address_allocation = optional(string)
    private_ip_address_version    = optional(string)
    private_ip_address            = optional(string)
  })
  default = {
    name                          = null
    subnet_id                     = null
    private_ip_address_allocation = null
    private_ip_address_version    = null
    private_ip_address            = null
  }
}
### [END] variables.tf ###