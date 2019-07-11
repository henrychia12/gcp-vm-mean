SHELL := /bin/bash
VAR_DIR = "variables"
TERRAFORM_APPLY = "terraform apply -auto-approve -var-file="
TERRAFORM_DESTROY = "terraform destroy -auto-approve -var-file="

mean-systemd-server-apply:
	@"${TERRAFORM_APPLY}${VAR_DIR}"/mean-systemd-server.tfvars

mean-systemd-server-destroy:
	@"${TERRAFORM_APPLY}${VAR_DIR}"/mean-systemd-server.tfvars

.PHONY = mean-systemd-server-apply mean-systemd-server-destroy
