init:
	@echo "Initializing..."
	@cd terraform \
		&& terraform init -reconfigure

check:
	@echo "Checking..."
	make fmt && make validate && make plan

plan:
	@echo "Planning..."
	@cd terraform \
		&& terraform plan -out=plan \
		&& terraform show -json plan > plan.tfgraph

fmt:
	@echo "Formatting..."
	@cd terraform \
		&& terraform fmt -check

validate:
	@echo "Validating..."
	@cd terraform \
		&& terraform validate

apply:
	@echo "Applying..."
	@cd terraform \
		&& terraform apply plan

destroy:
	@echo "Destroying..."
	@cd terraform \
		&& terraform destroy -auto-approve

gen-tf-docs:
	@echo "Generating Terraform Docs..."
	@terraform-docs markdown table terraform

former:
	@echo "Initializing Terraform..."
	@cd terraformer \
		&& terraform init
	@echo "Running Terraformer..."
	@cd terraformer \
		&& terraformer import aws -o terraformer --regions=us-east-1 --resources=load-balancer