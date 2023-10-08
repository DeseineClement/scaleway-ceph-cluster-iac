output "inventory_filename" {
  value = templatefile("${path.module}/templates/inventory.tftpl", { inventory = var.inventory })
}