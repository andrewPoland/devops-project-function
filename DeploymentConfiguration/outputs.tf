output "topic_connection_string" {
  value = "${module.service_bus.topic_connection_string}"
}

output "application_insights_instrumentation_key" {
  value = "${module.application_insights.instrumentation_key}"
}
