variable "location" {
  description = "Azure datacenter to deploy to."
  default = "West US"
}

variable "resource_group_name" {
  description = "Input your unique Azure resource group name"
}

variable "service_plan_name" {
  description = "Input the name of the app service plan to create."
}

variable "function_name" {
  description = "Input the name of the azure function to create."
}

variable "storage_account_name" {
   description = "Inpuit the name for the storage account to create"
}

variable "servicebus_name" {
  description = "the namespace of the service bus the topic is contained in."
}

variable "topic_name" {
  description = "Name of the topic you want to subscribe to."
}

variable "subscription_name" {
  description = "Input the name of the subscription to create, this should match what's defined in your azure function"
}
