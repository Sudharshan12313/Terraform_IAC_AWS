output "linux_instance_state" {
	value = aws_instance.linux_instance.*.instance_state
}

output "linux_instance_ip" {
	value = aws_instance.linux_instance.*.private_ip
}

output "linux_instance_tags" {
	value = aws_instance.linux_instance.*.tags_all
}

