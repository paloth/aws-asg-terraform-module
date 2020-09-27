## Requirements

| Name      | Version |
| --------- | ------- |
| terraform | ~> 0.13 |
| aws       | ~> 3    |

## Inputs

| Name               | Description                            | Type          | Default     | Required |
| ------------------ | -------------------------------------- | ------------- | ----------- | :------: |
| env                | Infrastructure environment             | `string`      | n/a         |   yes    |
| name               | AutoScaling Group name                 | `string`      | n/a         |   yes    |
| user\_data         | User data to execute at instance start | `any`         | n/a         |   yes    |
| lt\_version        | Launch Template version to use         | `string`      | `"$Latest"` |    no    |
| scheduled\_actions | Scheduled actions for the Asg          | `map(string)` | `null`      |    no    |
| shutdown\_behavior | AutoScaling instance shutdown behavior | `string`      | `"stop"`    |    no    |
| tags               | Asg tags                               | `map(string)` | `{}`        |    no    |

## Outputs

| Name       | Description                        |
| ---------- | ---------------------------------- |
| role\_arn  | The ARN for this AutoScaling Group |
| role\_id   | The autoscaling group id           |
| role\_name | The name of the autoscale group    |