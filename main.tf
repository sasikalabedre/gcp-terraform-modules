module "vpc" {
  source = "./modules/vpc"

  vpc_name    = "my-module-vpc"
  subnet_name = "my-module-subnet"
  subnet_cidr = "10.10.0.0/24"
  region      = var.region
}

module "vm" {
  source = "./modules/vm"

  vm_name      = "my-module-vm"
  machine_type = "e2-micro"
  zone         = var.zone
  image        = "debian-cloud/debian-12"

  subnet_id = module.vpc.subnet_id
}

module "firewall" {
  source = "./modules/firewall"

  firewall_name = "allow-web-ssh"
  vpc_id        = module.vpc.vpc_id
}
