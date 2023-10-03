###### UTILITY NODE #########################################################
module "utility_node" {
  source = "./modules/scaleway_instances"

  instance_count = var.utility_node_count
  instance_type  = var.instance_type
  instance_name  = "${var.instance_name_prefix}_utility_node"
  image_name     = var.utility_node_image_name
}

###### CLIENT NODE ##########################################################
module "client_node" {
  source = "./modules/scaleway_instances"

  instance_count = var.client_node_count
  instance_type  = var.instance_type
  instance_name  = "${var.instance_name_prefix}_client_node"
  image_name     = var.client_node_image_name
}

###### OSD NODE #############################################################
module "osd_node" {
  source = "./modules/scaleway_instances"

  instance_count = var.osd_node_count
  instance_type  = var.instance_type
  instance_name  = "${var.instance_name_prefix}_osd_node"
  image_name     = var.osd_node_image_name
}


###### MON NODE #############################################################
module "mon_node" {
  source = "./modules/scaleway_instances"

  instance_count = var.mon_node_count
  instance_type  = var.instance_type
  instance_name  = "${var.instance_name_prefix}_mon_node"
  image_name     = var.mon_node_image_name
}

###### MDS NODE #############################################################
module "mds_node" {
  source = "./modules/scaleway_instances"

  instance_count = var.mds_node_count
  instance_type  = var.instance_type
  instance_name  = "${var.instance_name_prefix}_mds_node"
  image_name     = var.mds_node_image_name
}

###### RGW ISCSI NODE #######################################################
module "rgw_iscsi_node" {
  source = "./modules/scaleway_instances"

  instance_count = var.rgw_iscsi_node_count
  instance_type  = var.instance_type
  instance_name  = "${var.instance_name_prefix}_rgw_iscsi_node"
  image_name     = var.rgw_iscsi_node_image_name
}