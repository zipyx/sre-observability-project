#  module "project_ec2" {
#    source             = "./modules/ec2"
#    name               = local.name
#    account            = data.aws_caller_identity.current.account_id
#    aws_ami            = data.aws_ami.amazon_linux_2.id
#    private_subnet_ids = module.vpc.private_subnet_ids
#    vpc_id             = module.vpc.vpc_id
#  }

  module "project_ec2" {
   source             = "./modules/ec2"
   name               = local.name
   account            = data.aws_caller_identity.current.account_id
   aws_ami            = "ami-068244a78a5b81f40"
   private_subnet_ids = module.vpc.private_subnet_ids
   vpc_id             = module.vpc.vpc_id
 }
