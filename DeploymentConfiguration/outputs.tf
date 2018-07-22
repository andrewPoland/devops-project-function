output "topic_connection_string" {
  sensitive = false
  value = "${module.service_bus.topic_connection_string}"
}

output "application_insights_instrumentation_key" {
  sensitive = true
  value = "${module.application_insights.instrumentation_key}"
}

output "all_for_one" {
  value = "${
    map(
      "topic_connection_string", "${module.service_bus.topic_connection_string}",
      "application_insights_instrumentation_key", "${module.application_insights.instrumentation_key}"
    )
  }"
}
