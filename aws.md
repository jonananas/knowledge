
# AWS tips and tricks

## Cli

[AWS CLI output format](https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-output-format.html)

```bash
aws sts get-caller-identity
aws logs tail --follow <loggroup-id>

aws ec2 describe-instances
aws ec2 describe-instances --query 'Reservations[*].Instances[*].SubnetId' --output text
aws ec2 describe-instances --filters "Name=subnet-id,Values=<SubnetId>" --query 'Reservations[*].Instances[*].PrivateIpAddress' --output text
# [Running instances PublicIP, Name](https://stackoverflow.com/questions/24938971/list-public-ip-addresses-of-ec2-instances)
aws ec2 describe-instances \
  --filter "Name=instance-state-name,Values=running" \
  --query "Reservations[*].Instances[*].[PublicIpAddress, Tags[?Key=='Name'].Value|[0]]" \
  --output text

# Clusters and services on clusters
aws ecs list-clusters
# --> arn:aws:ecs:region:ID:cluster/<clustername>
aws ecs list-services --cluster <clustername>
# --> arn:aws:ecs:region:ID:service/<clustername>/<servicename>
aws ecs list-tasks --cluster <clustername> --service-name <servicename>
# --> arn:aws:ecs:region:ID:task/<clustername>/<taskID>
aws ecs describe-tasks --cluster <clustername> --task [arn|taskID] --query 'tasks[0].attachments[0].details'
```

## Links

[AWS Networking Concepts mindmap](https://miparnisariblog.wordpress.com/2023/03/29/aws-networking-concepts/)
[AWS Console EU-WEST-1](https://eu-west-1.console.aws.amazon.com/ec2/v2/home?region=eu-west-1)

## List all resources agross all regions

[AWS find resources](https://eu-west-1.console.aws.amazon.com/resource-groups/tag-editor/find-resources?region=eu-west-1#query=regions:!%28%27AWS::AllSupported%27%29,resourceTypes:!%28%27AWS::AllSupported%27%29,tagFilters:!%28%29,type:TAG_EDITOR_1_0)

[SO Source](https://stackoverflow.com/questions/44391817/is-there-a-way-to-list-all-resources-in-aws/48288505#48288505)

## Services and their purpose

- AWS Lambda:
  - simplify building smaller, on-demand applications that are responsive to events and new information.
  - max runtime 15 minutes, see [limits](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html)
  - cold start
- [AWS Batch](https://eu-west-1.console.aws.amazon.com/batch/home?region=eu-west-1#)
  - <https://aws.amazon.com/blogs/aws/aws-batch-run-batch-computing-jobs-on-aws/>

- [AWS Bedrock](https://aws.amazon.com/bedrock/):
  - service that makes models from Amazon and leading AI startups available through an API
  - customize model with own data
  - integrate and deploy into your application
- [Agents for AWS Bedrock](https://aws.amazon.com/blogs/aws/preview-enable-foundation-models-to-complete-tasks-with-agents-for-amazon-bedrock):
  - create fully managed agents in a few clicks
