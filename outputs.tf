output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_id" {
  value = module.vpc.subnet_id
}

output "vm_name" {
  value = module.vm.vm_name
}


output "firewall_name" {
  value = module.firewall.firewall_name
}
