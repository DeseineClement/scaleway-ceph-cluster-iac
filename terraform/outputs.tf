###### UTILITY NODE #########################################################
output "utiliy_node_public_ips" {
  description = "The public Ip addresses allocated to each utility node"
  value       = module.utility_node.instance_public_ips
}

output "utiliy_node_private_ips" {
  description = "The private Ip addresses allocated to each utility node"
  value       = module.utility_node.instance_private_ips
}

###### CLIENT NODE ##########################################################
output "client_node_public_ips" {
  description = "The public Ip addresses allocated to each client node"
  value       = module.client_node.instance_public_ips
}

output "client_node_private_ips" {
  description = "The private Ip addresses allocated to each client node"
  value       = module.client_node.instance_private_ips
}

###### OSD NODE #############################################################
output "osd_node_public_ips" {
  description = "The public Ip addresses allocated to each OSD node"
  value       = module.osd_node.instance_public_ips
}

output "osd_node_private_ips" {
  description = "The private Ip addresses allocated to each OSD node"
  value       = module.osd_node.instance_private_ips
}

###### MON NODE #############################################################
output "mon_node_public_ips" {
  description = "The public Ip addresses allocated to each MON node"
  value       = module.mon_node.instance_public_ips
}

output "mon_node_private_ips" {
  description = "The private Ip addresses allocated to each MON node"
  value       = module.mon_node.instance_private_ips
}

###### MDS NODE #############################################################
output "mds_node_public_ips" {
  description = "The public Ip addresses allocated to each MDS node"
  value       = module.mds_node.instance_public_ips
}

output "mds_node_private_ips" {
  description = "The private Ip addresses allocated to each MDS node"
  value       = module.mds_node.instance_private_ips
}

###### ISCI NODE ############################################################
output "isci_node_public_ips" {
  description = "The public Ip addresses allocated to each ISCI node"
  value       = module.isci_node.instance_public_ips
}

output "isci_node_private_ips" {
  description = "The private Ip addresses allocated to each ISCI node"
  value       = module.isci_node.instance_private_ips
}