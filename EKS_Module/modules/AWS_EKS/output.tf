output "sg-id" {
  description = "ID of the userpool"  
  value = "${aws_eks_cluster.aws_eks.vpc_config[0].cluster_security_group_id}"
}