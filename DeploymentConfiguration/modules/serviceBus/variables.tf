variable "location" {
  description = "Azure datacenter to deploy to."
  default = "West US"
}

variable "resource_group_name" {
  description = "Input your unique Azure resource group name"
}

variable "servicebus_name" {
  description = "Input your unique Azure service bus name"
}

variable "topic_name" {
  description = "Input the Azure topic name to create"
}
