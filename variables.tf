variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}

variable "region" {
  type = string
}

variable "s3_force_path_style" {
  type = bool
}

variable "skip_credentials_validation" {
  type = bool
}

variable "skip_metadata_api_check" {
  type = bool
}

variable "skip_requesting_account_id" {
  type = bool
}

variable "endpoints" {
  type = object({
    apigateway     = string
    apigatewayv2   = string
    cloudformation = string
    cloudwatch     = string
    dynamodb       = string
    ec2            = string
    es             = string
    elasticache    = string
    firehose       = string
    iam            = string
    kinesis        = string
    lambda         = string
    rds            = string
    redshift       = string
    route53        = string
    s3             = string
    secretsmanager = string
    ses            = string
    sns            = string
    sqs            = string
    ssm            = string
    stepfunctions  = string
    sts            = string
  })

  sensitive = true
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "aws_count" {
  type = number
}
