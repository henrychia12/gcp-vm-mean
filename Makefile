SHELL := /bin/bash
VAR_DIR = "variables"
TERRAFORM_APPLY = "terraform apply -auto-approve -var-file="
TERRAFORM_DESTROY = "terraform destroy -auto-approve -var-file="

angular-systemd-server-apply:
	@"${TERRAFORM_APPLY}${VAR_DIR}"/angular-systemd-server.tfvars

angular-systemd-server-destroy:
	@"${TERRAFORM_DESTROY}${VAR_DIR}"/angular-systemd-server.tfvars

express-systemd-server-apply:
	@"${TERRAFORM_APPLY}${VAR_DIR}"/express-systemd-server.tfvars

express-systemd-server-destroy:
	@"${TERRAFORM_DESTROY}${VAR_DIR}"/express-systemd-server.tfvars

mongodb-systemd-server-apply:
	@"${TERRAFORM_APPLY}${VAR_DIR}"/mongodb-systemd-server.tfvars

mongodb-systemd-server-destroy:
	@"${TERRAFORM_DESTROY}${VAR_DIR}"/mongodb-systemd-server.tfvars


.PHONY = angular-systemd-server-apply angular-systemd-server-destroy express-systemd-server-apply express-systemd-server-destroy mongodb-systemd-server-apply mongodb-systemd-server-destroy


