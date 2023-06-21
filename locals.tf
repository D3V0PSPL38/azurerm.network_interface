### [BEGIN] locals.tf ###
locals {
  enabled = module.this.enabled
  e       = local.enabled
}
### [END] locals.tf ###