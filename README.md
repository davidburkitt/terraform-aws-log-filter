## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| aws | ~> 2.52 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.52 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_creds | path to AWS secret and key | `string` | n/a | yes |
| aws\_region | aws region | `string` | n/a | yes |
| log\_filters | List of filter objects | <pre>list(object({<br>    name              = string # log filter name<br>    metric_name_space = string # custom name space for metrics<br>    metric_name       = string # metric name <br>    log_group         = string # log group to filter<br>    pattern           = string # pattern for space delimited log stream<br>    metric_value      = string # metric value (static e.g. "1" or dynamic e.g "$field")<br>    metric_default_value = number # default metric value - should be "0"<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| log\_filters\_output | formatted list of log filter names |

