variable "inventory" {
  type        = map(map(string))
  description = "The list of host mapped by groups."
}
