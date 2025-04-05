module "eks_blueprints" {
  source  = "aws-ia/eks-blueprints/aws"
  version = "~> 5.0"

  cluster_name    = "gpu-ai-cluster"
  cluster_version = "1.29"
  enable_irsa     = true

  vpc_id     = data.aws_vpc.default.id
  subnet_ids = data.aws_subnets.private.ids

  managed_node_groups = {
    gpu-ng = {
      instance_types = ["g5.xlarge"]
      capacity_type  = "ON_DEMAND"
      desired_size   = 2
      min_size       = 1
      max_size       = 4
      ami_type       = "AL2_x86_64_GPU"
      labels = {
        workload = "ai"
      }
    }
  }

  add_ons = {
    nvidia-device-plugin = {
      addon_name    = "nvidia-device-plugin"
      addon_version = "v0.13.0-eksbuild.1"
    }
  }

  tags = {
    "env"     = "ai-lab"
    "project" = "eks-gpu"
  }
}