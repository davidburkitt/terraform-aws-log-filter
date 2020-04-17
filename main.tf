
terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = var.aws_region
  version = "~> 2.52"
  shared_credentials_file = var.aws_creds
}

resource "aws_cloudwatch_log_metric_filter" "lambdaLogMetricFilter" {
  count = length(var.log_filters)
  name           = var.log_filters[count.index].name
  pattern        = var.log_filters[count.index].pattern
  log_group_name = var.log_filters[count.index].log_group

  metric_transformation {
    name      = var.log_filters[count.index].metric_name
    namespace = var.log_filters[count.index].metric_name_space
    value     = var.log_filters[count.index].metric_value
    default_value = var.log_filters[count.index].metric_default_value
  }
}
