variable "resource_group_name" {
    description = "Resource Group Name"
    default     = "GitHubAction"
    type        = string
}

variable "location" {
    description = "Azure location"
    default     = "East US"
    type        = string
}

variable "storage_name" {
    description = "Azure Storage Account"
    type        = string
}