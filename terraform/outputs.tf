###### UTILITY NODE #########################################################
output "utility_node_public_ips" {
  description = "The public Ip addresses allocated to each utility node"
  value       = module.utility_node.instance_public_ips
}

###### CLIENT NODE ##########################################################
output "client_node_public_ips" {
  description = "The public Ip addresses allocated to each client node"
  value       = module.client_node.instance_public_ips
}

###### OSD NODE #############################################################
output "osd_node_public_ips" {
  description = "The public Ip addresses allocated to each OSD node"
  value       = module.osd_node.instance_public_ips
}

###### MON NODE #############################################################
output "mon_node_public_ips" {
  description = "The public Ip addresses allocated to each MON node"
  value       = module.mon_node.instance_public_ips
}

###### MDS NODE #############################################################
output "mds_node_public_ips" {
  description = "The public Ip addresses allocated to each MDS node"
  value       = module.mds_node.instance_public_ips
}

###### RGW ISCSI NODE #######################################################
output "rgw_iscsi_node_public_ips" {
  description = "The public Ip addresses allocated to each RGW ISCSI node"
  value       = module.rgw_iscsi_node.instance_public_ips
}

###### ANSIBLE ##############################################################
output "dns_inventory" {
  value = merge(
    { for index, ip in values(module.utility_node.instance_public_ips) : "utility${index + 1}.ceph.example.com" => ip },
    { for index, ip in values(module.client_node.instance_public_ips) : "client${index + 1}.ceph.example.com" => ip },
    { for index, ip in values(module.osd_node.instance_public_ips) : "osd${index + 1}.ceph.example.com" => ip },
    { for index, ip in values(module.mon_node.instance_public_ips) : "mon${index + 1}.ceph.example.com" => ip },
    { for index, ip in values(module.mds_node.instance_public_ips) : "mds${index + 1}.ceph.example.com" => ip },
    { for index, ip in values(module.rgw_iscsi_node.instance_public_ips) : "iscsi${index + 1}.ceph.example.com" => ip },
  )
}