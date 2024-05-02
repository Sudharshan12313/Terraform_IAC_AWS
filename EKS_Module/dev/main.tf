module "terra_vpc" {
  source = "../modules/AWS_EKS"
  eks_name = var.eks_name
  eks_sg = var.eks_sg
  eks_node_group_role = var.eks_node_group_role
  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
  eks_role = var.eks_role
  Cluster_subnet_ids = var.Cluster_subnet_ids
  eks_node_group_name = var.eks_node_group_name
  worker_node_subnet_ids = var.worker_node_subnet_ids
  desired_workernode_size = var.desired_workernode_size
  max_workernode_size = var.max_workernode_size
  min_workernode_size = var.min_workernode_size
  SecurityGroup-I-TO-I = var.SecurityGroup-I-TO-I
  instance_type = var.instance_type
  disk_size = var.disk_size
  volume_type = var.volume_type
  Version = var.Version
  stack_name = var.stack_name
  Team = var.Team
  Owner = var.Owner
  key_name = var.key_name
  Application = var.Application
  device_name = var.device_name
  OS_AMI = var.OS_AMI
  }

 # resource "aws_s3_bucket" "mybucket" {
 # bucket = "s3statebackend4231new"
#}

