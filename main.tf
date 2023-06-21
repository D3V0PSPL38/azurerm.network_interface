### [BEGIN] main.tf ###
module "label" {
  source          = "github.com/D3V0PSPL38/terraform-context-label.git"
  enabled         = module.this.enabled
  name            = var.name
  namespace       = var.namespace
  environment     = var.environment
  stage           = var.stage
  location        = var.location
  label_order     = var.label_order
  id_length_limit = var.id_length_limit
  tags            = var.tags
  context         = module.this.context
}

resource "azurerm_network_interface" "this" {
  count                         = local.e ? 1 : 0
  name                          = format("%s-%02d", module.label.id, count.index + 1)
  resource_group_name           = var.resource_group_name
  location                      = var.location
  dns_servers                   = var.dns_servers
  edge_zone                     = var.edge_zone
  enable_ip_forwarding          = var.enable_ip_forwarding
  enable_accelerated_networking = var.enable_accelerated_networking
  internal_dns_name_label       = var.internal_dns_name_label

  dynamic "ip_configuration" {
    for_each = var.ip_configuration
    iterator = ip
    content {
      name                                               = ip.value.name
      subnet_id                                          = ip.value.subnet_id
      private_ip_address_allocation                      = ip.value.private_ip_address_allocation
      private_ip_address_version                         = ip.value.private_ip_address_version
      private_ip_address                                 = ip.value.private_ip_address
      gateway_load_balancer_frontend_ip_configuration_id = ip.value.gateway_load_balancer_frontend_ip_configuration_id
      public_ip_address_id                               = var.public_ip_address_id
      primary                                            = ip.value.primary
    }
  }
  timeouts {
    read   = var.timeouts.read
    create = var.timeouts.create
    update = var.timeouts.update
    delete = var.timeouts.delete
  }
  tags = module.label.tags
}
### [END] main.tf ###