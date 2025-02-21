module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name = "core-vpc"
  cidr = "10.21.0.0/16"

  azs             = ["ap-northeast-2a", "ap-northeast-2b"]
  private_subnets = ["10.21.32.0/24", "10.21.33.0/24"]
  public_subnets  = ["10.21.0.0/24", "10.21.1.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = false

  tags = {
    "Environment" = "core"
  }
}

