module "vpc-module-iti" {
    source = "./modules/vpc"
    cidr_block_vpc = var.cidr_block_vpc

}

module "subnet1-module-iti" {
    source = "./modules/subnets"
    vpc_id = module.vpc-module-iti.vpc_id
    cidr_block_public_subnet1 = var.cidr_block_public_subnet1
   # cidr_block_public_subnet2 = var.cidr_block_public_subnet2


}



module "sg-module-iti" {
    source = "./modules/sg"
    vpc_id = module.vpc-module-iti.vpc_id

}

module "ec2-module-iti" {
    source = "./modules/ec2"
    public_subnet_id = module.subnet1-module-iti.public_subnet_id
    sg_id = module.sg-module-iti.sg_id

}

module "bucket-module-iti" {
    source = "./modules/s3"
    

}