# azurerm.network_interface

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.61.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_label"></a> [label](#module\_label) | github.com/D3V0PSPL38/terraform-context-label.git | n/a |
| <a name="module_this"></a> [this](#module\_this) | github.com/D3V0PSPL38/terraform-context-label.git | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_network_interface.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_tag_map"></a> [additional\_tag\_map](#input\_additional\_tag\_map) | Additional key-value pairs to add to each map in `tags_as_list_of_maps`. Not added to `tags` or `id`.<br>This is for some rare cases where resources want additional configuration of tags<br>and therefore take a list of maps with tag key, value, and additional configuration. | `map(string)` | `{}` | no |
| <a name="input_attributes"></a> [attributes](#input\_attributes) | ID element. Additional attributes (e.g. `workers` or `cluster`) to add to `id`,<br>in the order they appear in the list. New attributes are appended to the<br>end of the list. The elements of the list are joined by the `delimiter`<br>and treated as a single ID element. | `list(string)` | `[]` | no |
| <a name="input_context"></a> [context](#input\_context) | Single object for setting entire context at once.<br>See description of individual variables for details.<br>Leave string and numeric variables as `null` to use default value.<br>Individual variable settings (non-null) override settings in context object,<br>except for attributes, tags, and additional\_tag\_map, which are merged. | `any` | <pre>{<br>  "attributes": [],<br>  "delimiter": null,<br>  "enabled": true,<br>  "environment": null,<br>  "id_length_limit": null,<br>  "label_key_case": null,<br>  "label_order": [],<br>  "label_value_case": null,<br>  "labels_as_tags": [<br>    "unset"<br>  ],<br>  "location": null,<br>  "name": null,<br>  "namespace": null,<br>  "regex_replace_chars": null,<br>  "stage": null,<br>  "tags": {},<br>  "tenant": null<br>}</pre> | no |
| <a name="input_delimiter"></a> [delimiter](#input\_delimiter) | Delimiter to be used between ID elements.<br>Defaults to `-` (hyphen). Set to `""` to use no delimiter at all. | `string` | `null` | no |
| <a name="input_descriptor_formats"></a> [descriptor\_formats](#input\_descriptor\_formats) | Describe additional descriptors to be output in the `descriptors` output map.<br>Map of maps. Keys are names of descriptors. Values are maps of the form<br>`{<br>   format = string<br>   labels = list(string)<br>}`<br>(Type is `any` so the map values can later be enhanced to provide additional options.)<br>`format` is a Terraform format string to be passed to the `format()` function.<br>`labels` is a list of labels, in order, to pass to `format()` function.<br>Label values will be normalized before being passed to `format()` so they will be<br>identical to how they appear in `id`.<br>Default is `{}` (`descriptors` output will be empty). | `any` | `{}` | no |
| <a name="input_dns_servers"></a> [dns\_servers](#input\_dns\_servers) | [Optional] A list of DNS servers to associate with the virtual network. Changing this forces a new resource to be created. | `list(string)` | `[]` | no |
| <a name="input_edge_zone"></a> [edge\_zone](#input\_edge\_zone) | [Optional] The edge zone in which to provision the virtual network. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_enable_accelerated_networking"></a> [enable\_accelerated\_networking](#input\_enable\_accelerated\_networking) | [Optional] Enable accelerated networking on the network interface. Changing this forces a new resource to be created. | `bool` | `false` | no |
| <a name="input_enable_ip_forwarding"></a> [enable\_ip\_forwarding](#input\_enable\_ip\_forwarding) | [Optional] Enable IP forwarding on the network interface. Changing this forces a new resource to be created. | `bool` | `false` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources | `bool` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | ID element. Usually used for region e.g. 'uw2', 'us-west-2', OR role 'prod', 'staging', 'dev', 'UAT' | `string` | `null` | no |
| <a name="input_gateway_load_balancer_frontend_ip_configuration_id"></a> [gateway\_load\_balancer\_frontend\_ip\_configuration\_id](#input\_gateway\_load\_balancer\_frontend\_ip\_configuration\_id) | [Optional] The ID of a public IP address to associate with the network interface. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_id_length_limit"></a> [id\_length\_limit](#input\_id\_length\_limit) | Limit `id` to this many characters (minimum 6).<br>Set to `0` for unlimited length.<br>Set to `null` for keep the existing setting, which defaults to `0`.<br>Does not affect `id_full`. | `number` | `null` | no |
| <a name="input_internal_dns_name_label"></a> [internal\_dns\_name\_label](#input\_internal\_dns\_name\_label) | [Optional] A unique DNS name label to use for the internal load balancer used by this network interface. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_ip_configuration"></a> [ip\_configuration](#input\_ip\_configuration) | [Optional] Network interface IP configuration. Changing this forces a new resource to be created. | <pre>object({<br>    name                                               = optional(string)<br>    subnet_id                                          = optional(string)<br>    private_ip_address_allocation                      = optional(string)<br>    private_ip_address_version                         = optional(string)<br>    private_ip_address                                 = optional(string)<br>    gateway_load_balancer_frontend_ip_configuration_id = optional(string)<br>    public_ip_address_id                               = optional(string)<br>    primary                                            = optional(bool)<br>  })</pre> | <pre>{<br>  "gateway_load_balancer_frontend_ip_configuration_id": null,<br>  "name": null,<br>  "primary": null,<br>  "private_ip_address": null,<br>  "private_ip_address_allocation": null,<br>  "private_ip_address_version": null,<br>  "public_ip_address_id": null,<br>  "subnet_id": null<br>}</pre> | no |
| <a name="input_ip_configuration_name"></a> [ip\_configuration\_name](#input\_ip\_configuration\_name) | [Optional] The name of the IP configuration within the network interface. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_label_key_case"></a> [label\_key\_case](#input\_label\_key\_case) | Controls the letter case of the `tags` keys (label names) for tags generated by this module.<br>Does not affect keys of tags passed in via the `tags` input.<br>Possible values: `lower`, `title`, `upper`.<br>Default value: `title`. | `string` | `null` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | The order in which the labels (ID elements) appear in the `id`.<br>Defaults to ["namespace", "environment", "stage", "name", "attributes"].<br>You can omit any of the 6 labels ("tenant" is the 6th), but at least one must be present. | `list(string)` | `null` | no |
| <a name="input_label_value_case"></a> [label\_value\_case](#input\_label\_value\_case) | Controls the letter case of ID elements (labels) as included in `id`,<br>set as tag values, and output by this module individually.<br>Does not affect values of tags passed in via the `tags` input.<br>Possible values: `lower`, `title`, `upper` and `none` (no transformation).<br>Set this to `title` and set `delimiter` to `""` to yield Pascal Case IDs.<br>Default value: `lower`. | `string` | `null` | no |
| <a name="input_labels_as_tags"></a> [labels\_as\_tags](#input\_labels\_as\_tags) | Set of labels (ID elements) to include as tags in the `tags` output.<br>Default is to include all labels.<br>Tags with empty values will not be included in the `tags` output.<br>Set to `[]` to suppress all generated tags.<br>**Notes:**<br>  The value of the `name` tag, if included, will be the `id`, not the `name`.<br>  Unlike other `null-label` inputs, the initial setting of `labels_as_tags` cannot be<br>  changed in later chained modules. Attempts to change it will be silently ignored. | `set(string)` | <pre>[<br>  "default"<br>]</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | [Required] The Azure region in which the resources will be deployed.<br>    Can be provided in any of the following formats:<br><br>    "Central US" (Standard Format)<br>    "us-central" (CLI Format) | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | ID element. Usually the component or solution name, e.g. 'app' or 'jenkins'.<br>This is the only ID element not also included as a `tag`.<br>The "name" tag is set to the full `id` string. There is no tag with the value of the `name` input. | `string` | `null` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | ID element. Usually an abbreviation of your organization name, e.g. 'eg' or 'cp', to help ensure generated IDs are globally unique | `string` | `null` | no |
| <a name="input_primary"></a> [primary](#input\_primary) | [Optional] Indicates whether this is the primary IP configuration. Must be provided if ip\_configuration\_name is not set. Changing this forces a new resource to be created. | `bool` | `true` | no |
| <a name="input_private_ip_address"></a> [private\_ip\_address](#input\_private\_ip\_address) | [Optional] The private IP address to associate with the network interface. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_private_ip_address_allocation"></a> [private\_ip\_address\_allocation](#input\_private\_ip\_address\_allocation) | [Optional] The allocation method for the private IP address. Possible values are Static or Dynamic. Changing this forces a new resource to be created. | `string` | `"Dynamic"` | no |
| <a name="input_private_ip_address_version"></a> [private\_ip\_address\_version](#input\_private\_ip\_address\_version) | [Optional] The IP address version to use for the private IP address. Possible values are IPv4 or IPv6. Changing this forces a new resource to be created. | `string` | `"IPv4"` | no |
| <a name="input_public_ip_address_id"></a> [public\_ip\_address\_id](#input\_public\_ip\_address\_id) | [Optional] The ID of a public IP address to associate with the network interface. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_regex_replace_chars"></a> [regex\_replace\_chars](#input\_regex\_replace\_chars) | Terraform regular expression (regex) string.<br>Characters matching the regex will be removed from the ID elements.<br>If not set, `"/[^a-zA-Z0-9-]/"` is used to remove all characters other than hyphens, letters and digits. | `string` | `null` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | [Optional] The name of an existing resource group in which to provision the virtual network. If ommitted, a new resource group will be created. | `string` | `null` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | ID element. Usually used to indicate role, e.g. 'prod', 'staging', 'source', 'build', 'test', 'deploy', 'release' | `string` | `null` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | [Optional] The ID of the subnet to associate with the network interface. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. `{'BusinessUnit': 'XYZ'}`).<br>Neither the tag keys nor the tag values will be modified by this module. | `map(string)` | `{}` | no |
| <a name="input_tenant"></a> [tenant](#input\_tenant) | ID element \_(Rarely used, not included by default)\_. A customer identifier, indicating who this instance of a resource is for | `string` | `null` | no |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | [Optional] The timeouts block allows you to specify timeouts for certain actions | <pre>object({<br>    create = optional(string)<br>    read   = optional(string)<br>    update = optional(string)<br>    delete = optional(string)<br>  })</pre> | <pre>{<br>  "create": "30m",<br>  "delete": "30m",<br>  "read": "30m",<br>  "update": "30m"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_applied_dns_servers"></a> [applied\_dns\_servers](#output\_applied\_dns\_servers) | [Output] List of DNS servers applied to the specified Network Interface. |
| <a name="output_dns_servers"></a> [dns\_servers](#output\_dns\_servers) | [Output] The list of DNS servers used by the specified Network Interface. |
| <a name="output_enable_accelerated_networking"></a> [enable\_accelerated\_networking](#output\_enable\_accelerated\_networking) | [Output] Indicates if accelerated networking is set on the specified Network Interface. |
| <a name="output_enable_ip_forwarding"></a> [enable\_ip\_forwarding](#output\_enable\_ip\_forwarding) | [Output] Indicate if IP forwarding is set on the specified Network Interface. |
| <a name="output_id"></a> [id](#output\_id) | [Output] The ID of the Network Interface. |
| <a name="output_internal_dns_label_name"></a> [internal\_dns\_label\_name](#output\_internal\_dns\_label\_name) | [Output] The internal DNS name label of the specified Network Interface. |
| <a name="output_ip_configation"></a> [ip\_configation](#output\_ip\_configation) | [Output] ip\_configuration block as defined in the azurerm\_network\_interface resource. |
| <a name="output_location"></a> [location](#output\_location) | [Output] The location of the specified Network Interface. |
| <a name="output_mac_address"></a> [mac\_address](#output\_mac\_address) | [Output] The MAC address used by the specified Network Interface. |
| <a name="output_network_security_group_id"></a> [network\_security\_group\_id](#output\_network\_security\_group\_id) | [Output] The ID of the network security group associated to the specified Network Interface. |
| <a name="output_private_ip_address"></a> [private\_ip\_address](#output\_private\_ip\_address) | [Output] The primary private IP address associated to the specified Network Interface. |
| <a name="output_private_ip_addresses"></a> [private\_ip\_addresses](#output\_private\_ip\_addresses) | [Output] The list of private IP addresses associates to the specified Network Interface. |
| <a name="output_tags"></a> [tags](#output\_tags) | [Output] List the tags associated to the specified Network Interface. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
