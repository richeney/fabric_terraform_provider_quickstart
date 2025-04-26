data "fabric_capacity" "example" {
  display_name = var.fabric_capacity_name

  lifecycle {
    postcondition {
      condition     = self.state == "Active"
      error_message = "Fabric Capacity is not in Active state. Please check the Fabric Capacity status."
    }
  }
}

resource "fabric_workspace" "example" {
  display_name = var.fabric_workspace_display_name
  description  = var.fabric_workspace_description

  capacity_id = data.fabric_capacity.example.id

  identity = {
    type = "SystemAssigned"
  }
}
