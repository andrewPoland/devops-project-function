variable "location" {
  description = "Azure datacenter to deploy to."
  default = "West US"
}

variable "resource_group_name" {
  description = "Input your unique Azure resource group name"
}

variable "application_insights_name" {
  description = "input the name of application insights name to use"
}

variable "application_insights_type" {
  description = "input the type of application insights to setup, this affects what blades are displayed and metrics"
}
