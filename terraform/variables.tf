###### SHARED ###############################################################
variable "instance_type" {
  type        = string
  description = "The type of instance to use."
}

variable "instance_name_prefix" {
  type        = string
  description = "The name prefix used for all the instances"
}

###### UTILITY NODE #########################################################
variable "utility_node_count" {
  type        = number
  description = "The amount of utility node(s) to have"
  default     = 0
}

variable "utility_node_image_name" {
  type        = string
  description = "The name of the image to use for utility node(s)."
}
###### CLIENT NODE ##########################################################
variable "client_node_count" {
  type        = number
  description = "The amount of client node(s) to have"
  default     = 0
}

variable "client_node_image_name" {
  type        = string
  description = "The name of the image to use for client node(s)."
}

###### OSD NODE #############################################################
variable "osd_node_count" {
  type        = number
  description = "The amount of OSD node(s) to have"
  default     = 0
}

variable "osd_node_image_name" {
  type        = string
  description = "The name of the image to use for OSD node(s)."
}

###### MON NODE #############################################################
variable "mon_node_count" {
  type        = number
  description = "The amount of MON node(s) to have"
  default     = 0
}

variable "mon_node_image_name" {
  type        = string
  description = "The name of the image to use for MON node(s)."
}

###### MDS NODE #############################################################
variable "mds_node_count" {
  type        = number
  description = "The amount of MDS node(s) to have"
  default     = 0
}

variable "mds_node_image_name" {
  type        = string
  description = "The name of the image to use for MDS node(s)."
}

###### RGW ISCSI NODE #######################################################
variable "rgw_iscsi_node_count" {
  type        = number
  description = "The amount of RGW ISCSI node(s) to have"
  default     = 0
}

variable "rgw_iscsi_node_image_name" {
  type        = string
  description = "The name of the image to use for RGW ISCSI node(s)."
}