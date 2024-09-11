variable "prefix" {
  default     = "managing-eks-terraform"
  description = "Common prefix for AWS resources names"
}
variable "cluster_name" {
  description = "cluster name in env"
}

variable "aws_region" {
  description = "AWS Region to deploy VPC"
}

variable "vpc_cidr" {
  default     = "10.10.0.0/16"
  description = "AWS VPC CIDR range"
}

variable "environment" {
  type = string
}

variable "kubernetes_version" {
  type    = string
  default = "1.30"
}

variable "eks_cluster_nodegroups" {
  description = "Nodegroups of the EKS cluster"
}
