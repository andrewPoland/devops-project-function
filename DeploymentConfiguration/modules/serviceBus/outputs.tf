output "namespace" {
  value = "${azurerm_servicebus_namespace.test.name}"
}

output "topic_name" {
  value = "${azurerm_servicebus_topic.test.name}"
}

output "resource_group_name" {
  value = "${azurerm_resource_group.test.name}"
}

output "topic_connection_string" {
  value = "${azurerm_servicebus_topic_authorization_rule.test.primary_connection_string}"
}
