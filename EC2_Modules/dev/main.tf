module "Linux" {
   source = "../EC2_Module/Linux/" 
   stack_name = var.stack_name
    region = var.region
    Application = var.Application
    SecurityGroup-I-TO-I = var.SecurityGroup-I-TO-I
    SubnetID = var.SubnetID
    Instance_Type = var.Instance_Type
    EC2KeyPair = var.EC2KeyPair
    OS_AMI = var.OS_AMI

}
