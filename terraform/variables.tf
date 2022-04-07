variable "region" {
  default = "us-east-2"
}

variable "namespace" {
   default = "nonprod"
}

variable "tag" {
   default = "latest"
}

variable "repository" {
   default = "public.ecr.aws/d5y7k0n6/helloworld"
}

variable "app_version" {
  type = map
  description = "version to deploy"
}

