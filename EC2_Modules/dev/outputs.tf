output "linux_instance_state" {
        value = module.Linux.*.linux_instance_state
}

output "linux_instance_ip" {
    value = module.Linux.*.linux_instance_ip
}
