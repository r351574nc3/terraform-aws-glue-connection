variable "database_instance" {
  description = "RDS database instance identifier used to derive connection information from SSM."
  type        = string
}

variable "database_name" {
  description = "Name of the database to create a connection to."
  type        = string
}

variable "connection_type" {
  description = "(Optional) The type of the connection. Supported are: JDBC, MONGODB, KAFKA, and NETWORK. Defaults to JBDC"
  type        = string
  default     = "JDBC"
}

variable "jdbc_database_type" {
  description = "Database engine or type of database used. Supported database types are mysql, postgresql, oracle, and redshift."
  type        = string
}

variable "region" {
  type        = string
  description = "AWS Region"
}

variable "vpc_id" {
  description = "Id of the VPC the database instance resides in."
  type        = string
}
