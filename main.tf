
terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = var.aws_region
  version = "~> 2.52"
  shared_credentials_file = var.aws_creds
}

resource "aws_cloudwatch_log_metric_filter" "log_metric_filter" {
  name           = var.log_filter.name
  pattern        = var.log_filter.pattern
  log_group_name = var.log_filter.log_group

  metric_transformation {
    name      = var.log_filter.metric_name
    namespace = var.log_filter.metric_name_space
    value     = var.log_filter.metric_value
    default_value = var.log_filter.metric_default_value
  }
}
