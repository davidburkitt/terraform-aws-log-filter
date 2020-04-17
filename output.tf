output "aws_metric_log_filter_name" {
  value = "${formatlist("%v", aws_cloudwatch_log_metric_filter.lambdaLogMetricFilter.*.id)}"
  description = "formatted list of log filter names"
}

