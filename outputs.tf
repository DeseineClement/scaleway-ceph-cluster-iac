output "utiliy_node_public_ips" {
    description = "The public Ip addresses allocated to each utility node"
    value = module.utility_node.instance_public_ips
}

output "utiliy_node_private_ips" {
    description = "The private Ip addresses allocated to each utility node"
    value = module.utility_node.instance_private_ips
}

output "osd_node_public_ips" {
    description = "The public Ip addresses allocated to each OSD node"
    value = module.osd_node.instance_public_ips
}

output "osd_node_private_ips" {
    description = "The private Ip addresses allocated to each OSD node"
    value = module.osd_node.instance_private_ips
}
