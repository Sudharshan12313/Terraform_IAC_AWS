resource "aws_eks_cluster" "aws_eks" {
  name     = "${var.eks_name}-${var.Version}"
  role_arn = var.eks_role

  vpc_config {
    subnet_ids = var.Cluster_subnet_ids
    security_group_ids      = var.eks_sg
    endpoint_private_access = false
    endpoint_public_access  = true
  }

  tags = {
    Name = "${var.eks_name}-${var.Version}"
    Team = "${var.Team}"
    Owner = "${var.Owner}"
    Application = "${var.Application}"
    ISTO_Containers = "AWS-EKS"
  }
}
resource "aws_launch_template" "launchtemplate" {
  #instance_type          = var.instance_type
  image_id = var.OS_AMI
  name                   = "${var.eks_name}-${var.Version}"
  update_default_version = true

  key_name = var.key_name
  vpc_security_group_ids = var.SecurityGroup-I-TO-I
  block_device_mappings {
    device_name = var.device_name

    ebs {
      volume_size = var.disk_size
      volume_type = var.volume_type
      iops        = "1000"
      encrypted   = true
    }
  }

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "${var.eks_node_group_name}-${var.Version}"
      Application = var.Application
      Team = var.Team
      Owner = var.Owner
      ISTO_Containers = "AWS-EKS"
    }
  }
}
resource "aws_eks_node_group" "node" {
  cluster_name    = aws_eks_cluster.aws_eks.name
  node_group_name = "${var.eks_node_group_name}-${var.Version}"
  node_role_arn   = var.eks_node_group_role
  subnet_ids      = var.worker_node_subnet_ids
  instance_types = [var.instance_type]
#  availability_zone = var.availability_zone
  scaling_config {
    desired_size = var.desired_workernode_size
    max_size     = var.max_workernode_size
    min_size     = var.min_workernode_size
  }
  #launch_template {  
  #  id      = aws_launch_template.launchtemplate.id
  #  version = aws_launch_template.launchtemplate.latest_version
 #} 
  
  tags = {
    Name = "${var.eks_node_group_name}-${var.Version}"
    Team = "${var.Team}"
    Owner = "${var.Owner}"
    Application = "${var.Application}"
    ISTO_Containers = "AWS-EKS"
  }
 #depends_on = [aws_launch_template.launchtemplate]
}



