output "instance_public_ips" {
    description = "The public Ip addresses allocated to each VMs"
    value = [for server in scaleway_instance_server.servers: server.public_ip]
}

output "instance_private_ips" {
    description = "The public Ip addresses allocated to each VMs"
    value = [for server in scaleway_instance_server.servers: server.private_ip]
}