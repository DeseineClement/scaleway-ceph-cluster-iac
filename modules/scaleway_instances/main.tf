data "scaleway_instance_image" "my_image" {
  name = var.image_name
}

resource "scaleway_instance_ip" "instance_ip" {
  count = var.instance_count
}

resource "scaleway_instance_server" "servers" {
  count = var.instance_count
  name  = 1 == var.instance_count ? var.instance_name : "${var.instance_name}_${count.index + 1}"
  type  = var.instance_type
  image = data.scaleway_instance_image.my_image.image_id
  ip_id = scaleway_instance_ip.instance_ip[count.index].id
}