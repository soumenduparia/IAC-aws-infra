# sg alb
module "alb_http_sg" {
  source  = "terraform-aws-modules/security-group/aws//modules/http-80"
  version = "~> 4.0"

  name        = var.alb_sg_name
  vpc_id      = module.vpc.vpc_id
  description = var.alb_sg_description

  ingress_cidr_blocks = var.alb_sg_ingress_cidr_blocks
  tags                = var.alb_sg_tags
}


# sg asg
module "asg_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 4.0"

  name        = var.asg_sg_name
  description = var.asg_sg_description
  vpc_id      = module.vpc.vpc_id

  computed_ingress_with_source_security_group_id = [
    {
      rule                     = "http-80-tcp"
      source_security_group_id = module.alb_http_sg.security_group_id
    }
  ]
  number_of_computed_ingress_with_source_security_group_id = 1

  egress_rules = ["all-all"]

  tags = var.asg_sg_tags
}

# sg rds
module "security_group" {
  source      = "terraform-aws-modules/security-group/aws"
  version     = "~> 4.0"
  name        = var.rds_sg_name
  description = var.rds_sg_description
  vpc_id      = module.vpc.vpc_id
  computed_ingress_with_source_security_group_id = [
    {
      rule                     = "mysql-tcp"
      source_security_group_id = module.asg_sg.security_group_id
    }
  ]
  number_of_computed_ingress_with_source_security_group_id = 1
  tags                                                     = var.rds_sg_tags
}