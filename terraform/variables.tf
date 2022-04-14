variable "region" {
  default = "us-east-2"
}

variable "namespace" {
   default = "nonprod"
}

variable "enabled" {
   default = 1
}

variable "tag" {
   default = "latest"
}

variable "service_port" {
   default = 80
}

variable "service_type" {
   default = "NodePort"
}

variable "repository" {
   default = "public.ecr.aws/d5y7k0n6/helloworld"
}

variable "app_version" {
  type = map
  description = "version to deploy"
}

variable "replica_count" {
  type = map
  description = "count of pods"
}

variable "chart_version" {
  type = map
  description = "version to deploy"
}


