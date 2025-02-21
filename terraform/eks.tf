module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "19.0.0"
  cluster_name    = "core-eks"
  cluster_version = "1.27"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  eks_managed_node_groups = {
    eks_nodes = {
      desired_capacity = 2
      min_size         = 1
      max_size         = 2
      instance_types   = ["t2.micro"]
      ami_type        = "AL2_x86_64"
      labels = {
        "eks.amazonaws.com/nodegroup" = "eks_nodes"
    }
  }

  tags = {
    "Environment" = "core"
  }
}
}
