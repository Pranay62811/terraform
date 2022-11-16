terraform {
  required_providers {
    aws = {
    source  = "hashicorp/aws"
    version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA3IY7FEHWSLUCD6HW"
  secret_key = "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"
}


resource "aws_db_instance" "rds_instance" {
availability_zone = "us-east-1a"
allocated_storage = 20
identifier = "rds-terraform"
storage_type = "gp2"
engine = "mysql"
engine_version = "8.0.27"
instance_class = "db.t2.micro"
name = "mydb"
username = "admin"
password = "Admin123"
publicly_accessible    = true
skip_final_snapshot    = true




  tags = {
    Name = "mysqlRDSServerInstance"
  }
  
}
