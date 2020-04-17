aws_creds = "/Users/davidburkitt/git/repos/terraform/tf_aws_demo_1/.aws/credentials"
aws_region = "us_east_2"

#REPORT RequestId: 5002d846-892a-4bfe-83bb-b0c32406c482	Duration: 741.17 ms	Billed Duration: 800 ms	Memory Size: 128 MB	Max Memory Used: 84 MB	Init Duration: 345.65 ms
log_filters = [
{
  name = "Duration"
  metric_name_space = "lambdaReportFilter"
  metric_name = "Durtaion"
  log_group = "/aws/lambda/RequestUnicorn"
  pattern = "[entryType = REPORT, a, b, c, Duration, ...]"
  metric_value = "$Duration"
  metric_default_value = 0
},
{
  name = "BilledDuration"
  metric_name_space = "lambdaReportFilter"
  metric_name = "BilledDuration"
  log_group = "/aws/lambda/RequestUnicorn"
  pattern = "[entryType = REPORT, a, b, c, Duration, d, e, f, Billed, ...]"
  metric_value = "$Billed"
  metric_default_value = 0
}
]