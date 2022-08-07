variable "aws_region" {
  description = "The aws region to deploy"
  type        = string
  default     = "us-east-1"
}

variable "vpc" {
  description = "VPC configuration for function"
  type        = any
  default     = {}
}

variable "lambda" {
  description = "Lambda function configuration"
  type        = any
  default     = {}
}

variable "tracing" {
  description = "Tracing configuration for function"
  type        = any
  default     = {}
}


variable "logs" {
  description = "Log configuration for function"
  type        = any
  default     = {}
}

variable "policy_arns" {
  description = "A list of policy ARNs to attach the role for lambda function"
  type        = list(string)
  default     = []
}

variable "name" {
  description = "The logical name of the module instance"
  type        = string
}

variable "tags" {
  description = "The key-value maps for tagging"
  type        = map(string)
  default     = {}
}
