
# AWS tips and tricks

## Cli

```bash
aws sts get-caller-identity
aws ec2 describe-instances
aws logs tail --follow <id>
aws ec2 describe-instances --query 'Reservations[*].Instances[*].SubnetId' --output text
aws ec2 describe-instances --filters "Name=subnet-id,Values=<SubnetId>" --query 'Reservations[*].Instances[*].PrivateIpAddress' --output text
```

## Links

https://eu-west-1.console.aws.amazon.com/ec2/v2/home?region=eu-west-1

## List all resources agross all regions

[AWS find resources](https://eu-west-1.console.aws.amazon.com/resource-groups/tag-editor/find-resources?region=eu-west-1#query=regions:!%28%27AWS::AllSupported%27%29,resourceTypes:!%28%27AWS::AllSupported%27%29,tagFilters:!%28%29,type:TAG_EDITOR_1_0)

[SO Source](https://stackoverflow.com/questions/44391817/is-there-a-way-to-list-all-resources-in-aws/48288505#48288505)

