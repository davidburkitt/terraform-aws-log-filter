output "log_filters_output" {
  value = "${formatlist("%v", aws_cloudwatch_log_metric_filter.log_metric_filter.*.id)}"
  description = "formatted list of log filter names"
}

