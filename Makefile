tfi:
	@cd terraform && terraform init

tfp:
	@cd terraform && terraform plan

tfa:
	@cd terraform && terraform apply

tfd:
	@cd terraform && terraform destroy
