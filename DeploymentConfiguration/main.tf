provider "azurerm" { }

module "service_bus" {
  source = "./modules/serviceBus"
  location = "${var.root-location}"
  resource_group_name = "${var.root-resource_group_name}"
  servicebus_name = "${var.root-servicebus_name}"
  topic_name = "${var.root-topic_name}"
}

module "service_bus_azure_function" {
  source = "./modules/serviceBusAzureFunction"
  location = "${var.root-location}"
  resource_group_name = "${var.root-resource_group_name}"
  service_plan_name = "${var.root-service_plan_name}"
  function_name = "${var.root-function_name}"
  subscription_name = "${var.root-subscription_name}"
  storage_account_name = "${var.root-storage_account_name}"
  topic_name = "${module.service_bus.topic_name}"
  servicebus_name = "${module.service_bus.namespace}"
}

module "application_insights" {
  source = "./modules/applicationInsights"
  location = "${var.root-location}"
  resource_group_name = "${var.root-resource_group_name}"
  application_insights_name = "${var.root-application_insights_name}"
  application_insights_type = "Web"
}
