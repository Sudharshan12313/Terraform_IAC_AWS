resource "aws_instance" "linux_instance" {	
	ami = var.OS_AMI
	instance_type = var.Instance_Type
	security_groups = var.SecurityGroup-I-TO-I
	subnet_id = var.SubnetID
	key_name = var.EC2KeyPair
    tags = {
    Name = "${var.stack_name}"
    Application = "${var.Application}"
    Restart = "WORKDAY"
   }
	ebs_block_device { 
			device_name = "/dev/sda1"
		    volume_size = "30"
		    volume_type = "io1"
		    iops = "200"
		    delete_on_termination = true
		    encrypted = true
	}
}
