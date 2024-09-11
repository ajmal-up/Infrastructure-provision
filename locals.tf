locals {
  name            = "${var.cluster_name}-${terraform.workspace}"
  node_group_name = "managed-ondemand"

  vpc_cidr = "10.0.0.0/16"
  azs      = slice(data.aws_availability_zones.available.names, 0, 3)

  tags = {
    Environment = var.environment
  }

}