variable "fabric_capacity_name" {
  description = "Name of the Fabric Capacity"
  type        = string
  default     = "Premium Per User - Reserved"
}

variable "fabric_workspace_display_name" {
    description = "Display name of the Fabric Workspace"
    type        = string
}

variable "fabric_workspace_description" {
    description = "Description of the Fabric Workspace"
    type        = string
    default     = null
}