data "scaleway_instance_image" "my_image" {
    name  = var.image_name
}

resource "scaleway_instance_ip" "instance_ip" {
    count = var.instance_count
}

resource "scaleway_instance_server" "servers" {
    count = var.instance_count
    name = count.index ? var.instance_name : "${var.instance_name}_${count.index}"
    type = var.instance_type
    image = data.scaleway_instance_image.my_image.name
    ip_id = scaleway_instance_ip.instance_ip[count.index].id
}