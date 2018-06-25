output "topic_connection_string" {
  sensitive = true
  value = "${module.service_bus.topic_connection_string}"
}

output "application_insights_instrumentation_key" {
  sensitive = true
  value = "${module.application_insights.instrumentation_key}"
}
