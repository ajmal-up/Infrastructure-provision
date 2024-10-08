cluster_name = "Assesment-cluster"
environment  = "prod"
aws_region   = "us-east-1"

eks_cluster_nodegroups = {
  ng1 = {

    desired_size = 1
    min_size     = 1
    max_size     = 3

    labels = {
      role = "ng1"
    }

    instance_types = ["t3.xlarge"]
    capacity_type  = "ON_DEMAND"

    block_device_mappings = {
      xvda = {
        device_name = "/dev/xvda"
        ebs = {
          volume_size           = 128
          volume_type           = "gp3"
          iops                  = 3000
          throughput            = 150
          encrypted             = true
          delete_on_termination = true
        }
      }
    }
  }
}