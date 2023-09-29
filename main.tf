# This is where you put your resource declaration

module "utility_node" {
    source = "./modules/scaleway_instances"

    instance_count = var.utility_node_count
    instance_type = var.instance_type
    instance_name = "${var.instance_name_prefix}_utility_node"
    image_name = var.utility_node_image_name
}

module "osd_node" {
    source = "./modules/scaleway_instances"

    instance_count = var.osd_node_count
    instance_type = var.instance_type
    instance_name = "${var.instance_name_prefix}_osd_node"
    image_name = var.osd_node_image_name
}