provider "aws" {
  region = var.region
}

module "vpc" {
  source     = "cloudposse/vpc/aws"
  cidr_block = "172.16.0.0/16"

  context = module.this.context

}

module "glue_connection" {
  source  = "../../"
  
  enabled = var.enabled

  connection_type    = var.connection_type
  database_instance  = var.database_instance
  database_name      = var.database_name
  jdbc_database_type = var.jdbc_database_type
  region             = var.region
  vpc_id             = module.vpc.outputs.vpc_id

  context = module.introspection.context

}

