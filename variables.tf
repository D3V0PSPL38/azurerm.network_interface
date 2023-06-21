### [BEGIN] variables.tf ###
variable "resource_group_name" {
  description = <<EOD
  [Optional] The name of an existing resource group in which to provision the virtual network. If ommitted, a new resource group will be created.
  EOD
  type        = string
  default     = null
}

variable "dns_servers" {
  description = <<EOD
  [Optional] A list of DNS servers to associate with the virtual network. Changing this forces a new resource to be created.
  EOD
  type        = list(string)
  default     = []
}

variable "edge_zone" {
  description = <<EOD
  [Optional] The edge zone in which to provision the virtual network. Changing this forces a new resource to be created.
  EOD
  type        = string
  default     = null
}

variable "enable_ip_forwarding" {
  description = <<EOD
  [Optional] Enable IP forwarding on the network interface. Changing this forces a new resource to be created.
  EOD
  type        = bool
  default     = false
}

variable "enable_accelerated_networking" {
  description = <<EOD
  [Optional] Enable accelerated networking on the network interface. Changing this forces a new resource to be created.
  EOD
  type        = bool
  default     = false
}

variable "internal_dns_name_label" {
  description = <<EOD
  [Optional] A unique DNS name label to use for the internal load balancer used by this network interface. Changing this forces a new resource to be created.
  EOD
  type        = string
  default     = null
}

variable "ip_configuration_name" {
  description = <<EOD
  [Optional] The name of the IP configuration within the network interface. Changing this forces a new resource to be created.
  EOD
  type        = string
  default     = null
}

variable "subnet_id" {
  description = <<EOD
  [Optional] The ID of the subnet to associate with the network interface. Changing this forces a new resource to be created.
  EOD
  type        = string
  default     = null
}

variable "private_ip_address_allocation" {
  description = <<EOD
  [Optional] The allocation method for the private IP address. Possible values are Static or Dynamic. Changing this forces a new resource to be created.
  EOD
  type        = string
  default     = "Dynamic"
}

variable "private_ip_address_version" {
  description = <<EOD
  [Optional] The IP address version to use for the private IP address. Possible values are IPv4 or IPv6. Changing this forces a new resource to be created.
  EOD
  type        = string
  default     = "IPv4"
  validation {
    condition     = contains(["IPv4", "IPv6"], var.private_ip_address_version)
    error_message = "private_ip_address_version must be either IPv4 or IPv6"
  }
}

variable "private_ip_address" {
  description = <<EOD
  [Optional] The private IP address to associate with the network interface. Changing this forces a new resource to be created.
  EOD
  type        = string
  default     = null
}

variable "gateway_load_balancer_frontend_ip_configuration_id" {
  description = <<EOD
  [Optional] The ID of a public IP address to associate with the network interface. Changing this forces a new resource to be created.
  EOD
  type        = string
  default     = null
}

variable "public_ip_address_id" {
  description = <<EOD
  [Optional] The ID of a public IP address to associate with the network interface. Changing this forces a new resource to be created.
  EOD
  type        = string
  default     = null
}

variable "primary" {
  description = <<EOD
  [Optional] Indicates whether this is the primary IP configuration. Must be provided if ip_configuration_name is not set. Changing this forces a new resource to be created.
  EOD
  type        = bool
  default     = true
}

variable "ip_configuration" {
  description = <<EOD
  [Optional] Network interface IP configuration. Changing this forces a new resource to be created.
  EOD
  type = object({
    name                                               = optional(string)
    subnet_id                                          = optional(string)
    private_ip_address_allocation                      = optional(string)
    private_ip_address_version                         = optional(string)
    private_ip_address                                 = optional(string)
    gateway_load_balancer_frontend_ip_configuration_id = optional(string)
    public_ip_address_id                               = optional(string)
    primary                                            = optional(bool)
  })
  default = {
    name                                               = null
    subnet_id                                          = null
    private_ip_address_allocation                      = null
    private_ip_address_version                         = null
    private_ip_address                                 = null
    gateway_load_balancer_frontend_ip_configuration_id = null
    public_ip_address_id                               = null
    primary                                            = null
  }
}

variable "timeouts" {
  description = <<EOD
  [Optional] The timeouts block allows you to specify timeouts for certain actions
  EOD
  type = object({
    create = optional(string)
    read   = optional(string)
    update = optional(string)
    delete = optional(string)
  })
  default = {
    create = "30m"
    read   = "30m"
    update = "30m"
    delete = "30m"
  }
}
### [END] variables.tf ###