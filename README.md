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
