variable "region" {
}


variable "OS_AMI" {
	description = ""
	type = string
	default = "ami-01dad638e8f31ab9a"
}


variable "Instance_Type" { 		
}


variable "SecurityGroup-I-TO-I" {
}

variable "SubnetID" {
    type = string
	default = "subnet-09d725677e41eadaf"
}

variable "EC2KeyPair" {
}

variable "stack_name" {
}

variable "Application" {
}
