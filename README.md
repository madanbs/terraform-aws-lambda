## Setup
This [link](https://github.com/madanbs/terraform-lambda-deployment/blob/main/main.tf) is the example of terraform configuration file to create code pipeline workflow.

### Terraform
Run terraform:
```
$ terraform init
$ terraform apply
```
Also you can use the `-var-file` option for customized paramters when you run the terraform plan/apply command.
```
$ terraform plan -var-file tc1.tfvars
$ terraform apply -var-file tc1.tfvars
```

### GitHub connection.

AWS official [guide](https://docs.aws.amazon.com/dtconsole/latest/userguide/connections-update.html) and follow the instructions.

## Clean up
Run terraform:
```
$ terraform destroy
```
Don't forget you have to use the `-var-file` option when you run terraform destroy command to delete the aws resources created with extra variable files.
```
$ terraform destroy -var-file tc1.tfvars
```

We can use this terraform  module to create codepipeline for lambda.

```
module "lambda-code-pipeline" {
  source   = "abdellatif05/lambda-code-pipeline/aws"
  prefix                    = "your-prefix"
  codestar_connection_arn   = "arn-of-aws-codestar-connection"
  repository_id             = "your-lambda-repository"
  branch_name               = "branche-name"
  cloudformation_stack_name = "cloudformation-name-of-lambda"
}

```

These variables must be set in the module block when using this module.
```
cloudformation_stack_name string
Description: The name of the cloudformation project created by sam
```
```
codestar_connection_arn string
Description: You should add Github connection
```
```
prefix string
Description: (no description specified)
```
```
repository_id string
Description: Repository ID of the project ex: AbdellatifSfeir/sam-app
```
```
Optional Inputs
These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.
```
```
branch_name string
Description: (no description specified)
Default: "develop"
```
