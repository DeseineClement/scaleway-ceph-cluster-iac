variable "instance_count" {
  type        = number
  description = "The amount of required instances."
  default     = 1
}

variable "instance_type" {
  type        = string
  description = "The type of instance to use."
}

variable "image_name" {
  type        = string
  description = "The name of the image to use."
}

variable "instance_name" {
  type        = string
  description = "Name given to the name of the instances"
}