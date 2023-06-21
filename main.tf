### [BEGIN] main.tf ###
resource "time_static" "deploy_date" {}

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
  count               = local.e ? 1 : 0
  name                = format("%s-%02d", module.label.id, count.index + 1)
  resource_group_name = var.resource_group_name
  location            = var.location
  dynamic "ip_configuration" {
    for_each = var.ip_configuration
    iterator = ip
    content {
      name                          = ip.value.name
      subnet_id                     = ip.value.subnet_id
      private_ip_address_allocation = ip.value.private_ip_address_allocation
      private_ip_address_version    = ip.value.private_ip_address_version
      private_ip_address            = ip.value.private_ip_address
    }
  }
  tags = module.label.tags
}
### [END] main.tf ###