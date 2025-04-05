output "cluster_name" {
  value = module.eks_blueprints.cluster_name
}

output "eks_cluster_endpoint" {
  value = module.eks_blueprints.eks_cluster_endpoint
}