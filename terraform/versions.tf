terraform {

   backend "s3" {}
  
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.5.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.10.0"
    }
  }
  required_version = "~> 1.1.7"
}
