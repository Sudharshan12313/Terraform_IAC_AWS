provider "aws" {
  ##shared_config_files      = ["/c/Users/s.reddy.siddamurthi/.aws/config"]
  ##shared_credentials_files = ["/c/Users/s.reddy.siddamurthi/.aws/credentials"]
  region = "eu-north-1"
  profile = "sudha"
}

resource "aws_instance" "linux_instance" {	
	ami = "ami-01dad638e8f31ab9a"
	instance_type = "t3.micro"
	security_groups = ["sg-00527a7ca0b887824"]
	subnet_id = "subnet-09d725677e41eadaf"
	key_name = "cg-test"
    tags = {
    Name = "test-Instance"
    Application = "to-be-deleted"
    Restart = "TESTING"
   }
	ebs_block_device { 
			device_name = "/dev/sda1"
		    volume_size = "30"
		    volume_type = "io1"
		    iops = "200"
		    delete_on_termination = true
	}
}
