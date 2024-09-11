output "eks_cluster_name" {
  value       = module.eks.cluster_id
  description = "EKS cluster name"
}

output "user1_access_key" {
  value       = module.user1_iam_user.iam_access_key_id
  description = "EKS cluster name"
}
output "user1_secret_access_key" {
  sensitive   = true
  value       = module.user1_iam_user.iam_access_key_secret
  description = "EKS cluster name"
}