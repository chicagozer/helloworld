terraform {
  
backend "remote" {
    organization = "rheosoft"

    workspaces {
#      prefix = "rtdb-"
       name = "helloworld"
    }
  }

  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.5.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  required_version = "~> 1.1.7"
}
