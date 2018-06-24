resource "azurerm_resource_group" "test" {
  name     = "${var.resource_group_name}"
  location = "${var.location}"
}

resource "azurerm_servicebus_namespace" "test" {
  name                = "${var.servicebus_name}"
  location            = "${azurerm_resource_group.test.location}"
  resource_group_name = "${azurerm_resource_group.test.name}"
  sku                 = "basic"

  tags {
    source = "terraform"
  }
}

resource "azurerm_servicebus_topic" "test" {
  name                = "${var.topic_name}"
  resource_group_name = "${azurerm_resource_group.test.name}"
  namespace_name      = "${azurerm_servicebus_namespace.test.name}"

  enable_partitioning = true
}

resource "azurerm_servicebus_topic_authorization_rule" "test" {
  name                = "readOnly"
  namespace_name      = "${azurerm_servicebus_namespace.test.name}"
  topic_name          = "${azurerm_servicebus_topic.test.name}"
  resource_group_name = "${azurerm_resource_group.test.name}"
  listen              = true
  send                = false
  manage              = false
}
