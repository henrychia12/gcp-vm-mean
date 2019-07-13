variable "project" {
	default = "fair-melody-246109"
}

variable "name" {
	default = "default"
}

variable "frontend" {
	default = "angular"
}

variable "api" {
	default = "express"
}

variable "database" {
	default = "mongodb"
}

variable "machine_type" {
	default = "f1-micro"
}

variable "zone" {
	default = "europe-west2-c"
}

variable "region" {
	default = "europe-west2"
}

variable "image" {
	default = "ubuntu-1804-bionic-v20190628"
}

variable "network" {
	default = "default"
}

variable "ssh_user" {
	default = "terraform"
}

variable "public_key" {
	default = "~/.ssh/id_rsa.pub"
}

variable "private_key" {
	default = "~/.ssh/id_rsa"
}

variable "package_manager" {
	default = "apt"
}

variable "update_packages" {
	default = {
		"apt" = "sudo apt update"
	}
}

variable "packages" {
	default = [
		"wget",
		"unzip"
	]
}

variable "install_packages" {
	default = {
		"apt" = "sudo apt install -y"
	}
}

variable "scripts" {
	default = []
}

variable "angular-script" {
	default = "scripts/angular-project-install.sh"
}

variable "mongodb-script" {
	default = "scripts/mongodb-project-install.sh"
}

variable "express-script" {
	default = "scripts/express-project-install.sh"
}


variable "allowed_ports" {
	default = [
		   "22",
		   "8080",
		   "4200",
		   "27017"
		  ]
}
