output "instance_public_ips" {
  description = "The public Ip addresses allocated to each VMs"
  value = {
    for index, server in scaleway_instance_server.servers :
    (1 == var.instance_count ? var.instance_name : "${var.instance_name}_${index + 1}") => server.public_ip
  }
}

output "instance_private_ips" {
  description = "The private Ip addresses allocated to each VMs"
  value = {
    for index, server in scaleway_instance_server.servers :
    (1 == var.instance_count ? var.instance_name : "${var.instance_name}_${index + 1}") => server.private_ip
  }
}

output "instance_ips_prefix" {
  description = "The private Ip addresses allocated to each VMs"
  value = {
    for index, server in scaleway_instance_server.servers :
    (1 == var.instance_count ? var.instance_name : "${var.instance_name}_${index + 1}") => scaleway_instance_ip.instance_ip[index].prefix
  }
}