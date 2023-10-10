###### ANSIBLE ##############################################################
output "dns_role_named_dns_prefix" {
  value = local.dns_role_named_dns_prefix
}

output "dns_role_named_dns_entries" {
  value = merge(
    { for index, ip in values(module.utility_node.instance_public_ips) : "utility${index + 1}.${local.dns_role_named_dns_prefix}" => ip },
    { for index, ip in values(module.client_node.instance_public_ips) : "client${index + 1}.${local.dns_role_named_dns_prefix}" => ip },
    { for index, ip in values(module.osd_node.instance_public_ips) : "osd${index + 1}.${local.dns_role_named_dns_prefix}" => ip },
    { for index, ip in values(module.mon_node.instance_public_ips) : "mon${index + 1}.${local.dns_role_named_dns_prefix}" => ip },
    { for index, ip in values(module.mds_node.instance_public_ips) : "mds${index + 1}.${local.dns_role_named_dns_prefix}" => ip },
    { for index, ip in values(module.rgw_iscsi_node.instance_public_ips) : "rgwisci${index + 1}.${local.dns_role_named_dns_prefix}" => ip },
  )
}

output "network_manager_role_named_dns_prefix" {
  value = local.dns_role_named_dns_prefix
}

output "network_manager_role_dns_nameservers" {
  value = values(module.utility_node.instance_public_ips)
}
