variable "prefix" {
  description = "The prefix to use for all resources"
  type        = string
}

variable "location" {
  description = "The location where all resources will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet"
  type        = string
}