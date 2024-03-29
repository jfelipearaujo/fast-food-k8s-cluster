variable "region" {
  type        = string
  description = "The default region to use for AWS"
}

variable "cluster_name" {
  type        = string
  description = "The name of the EKS cluster"
}

variable "cluster_version" {
  type        = string
  description = "The version of Kubernetes to use for the EKS cluster"
}

variable "cluster_namespace" {
  type        = string
  description = "The namespace to use for the EKS cluster"
}

variable "cluster_service_account_name" {
  type        = string
  description = "The name of the service account to use for the EKS cluster"
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC"
}

variable "private_subnets" {
  type        = list(string)
  description = "The IDs of the private subnets"
}
