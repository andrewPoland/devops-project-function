output "instrumentation_key" {
  value = "${azurerm_application_insights.test.instrumentation_key}"
}

output "app_id" {
  value = "${azurerm_application_insights.test.app_id}"
}
