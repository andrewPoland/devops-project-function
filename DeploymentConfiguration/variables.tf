variable "root-location" {
  description = "Azure datacenter to deploy to."
  default = "West US"
}

variable "root-resource_group_name" {
  description = "Input your unique Azure resource group name"
}

variable "root-servicebus_name" {
  description = "Input your unique Azure service bus name"
}

variable "root-topic_name" {
  description = "Input the Azure topic name to create"
}

variable "root-service_plan_name" {
  description = "Input the name of the app service plan to create."
}

variable "root-function_name" {
  description = "Input the name of the azure function to create."
}

variable "root-subscription_name" {
  description = "Input the name of the subscription to create, this should match what's defined in your azure function"
}

variable "root-application_insights_name" {
  description = "input the name of application insights name to use"
}

variable "root-storage_account_name" {
  description = "Input the name of storage account to store the azure function"
}
