# This is where you put your variables declaration
variable "instance_type" {
    type = string
    description = "The type of instance to use."
}

variable "image_name" {
    type = string
    description = "The name of the image to use."
}

variable "instance_name_prefix" {
    type = string
    description = "The name prefix used for all the instances"
}

variable "utility_node_count" {
    type = number
    description = "The amount of utility node(s) to have"
    default = 0
}

variable "osd_node_count" {
    type = number
    description = "The amount of OSD node(s) to have"
    default = 0
}