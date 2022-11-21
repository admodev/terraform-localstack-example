terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.7"
    }
  }

  required_version = ">= 0.13.4"
}

provider "aws" {
  access_key                  = var.aws_access_key
  secret_key                  = var.aws_secret_key
  region                      = var.region
  s3_force_path_style         = var.s3_force_path_style
  skip_credentials_validation = var.skip_credentials_validation
  skip_metadata_api_check     = var.skip_metadata_api_check
  skip_requesting_account_id  = var.skip_requesting_account_id

  endpoints {
    apigateway     = var.endpoints.apigateway
    apigatewayv2   = var.endpoints.apigatewayv2
    cloudformation = var.endpoints.cloudformation
    cloudwatch     = var.endpoints.cloudwatch
    dynamodb       = var.endpoints.dynamodb
    ec2            = var.endpoints.ec2
    es             = var.endpoints.es
    elasticache    = var.endpoints.elasticache
    firehose       = var.endpoints.firehose
    iam            = var.endpoints.iam
    kinesis        = var.endpoints.kinesis
    lambda         = var.endpoints.lambda
    rds            = var.endpoints.rds
    redshift       = var.endpoints.redshift
    route53        = var.endpoints.route53
    s3             = var.endpoints.s3
    secretsmanager = var.endpoints.secretsmanager
    ses            = var.endpoints.ses
    sns            = var.endpoints.sns
    sqs            = var.endpoints.sqs
    ssm            = var.endpoints.ssm
    stepfunctions  = var.endpoints.stepfunctions
    sts            = var.endpoints.sts
  }
}

resource "aws_instance" "myserver" {
  ami           = var.ami
  instance_type = var.instance_type
  count = var.aws_count

  tags = {
    Name = "Server${count.index + 1}"
  }
}