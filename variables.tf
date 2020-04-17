variable "aws_creds" {
  type        = string
  description = "path to AWS secret and key"
}

variable "aws_region" {
  type        = string
  description = "aws region"
}

variable "log_filters" {
  type = list(object({
    name              = string # log filter name
    metric_name_space = string # custom name space for metrics
    metric_name       = string # metric name 
    log_group         = string # log group to filter
    pattern           = string # pattern for space delimited log stream
    metric_value      = string # metric value (static e.g. "1" or dynamic e.g "$field")
    metric_default_value = number # default metric value - should be "0"
  }))
  description = "List of filter objects"
}