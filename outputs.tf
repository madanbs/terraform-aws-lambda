output "github_connection_status" {
  description = "The CodeStar Connection status. Possible values are PENDING, AVAILABLE and ERROR."
  value       = aws_codestarconnections_connection.github.connection_status
}

output "function" {
  description = "Attributes of lmabda function"
  value       = aws_lambda_function.lambda
}

output "logs" {
  description = "Attributes of cloudwatch log group for the lmabda function"
  value       = module.logs
}
