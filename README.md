# Summary
This repository generates and applies Terraform (JSON) files for building AWS environments using Apple's programming language Pkl.

# Command
```bash
# terraform init. STAGE=dev or stg or prod
sh init.sh [STAGE]

# pkl eval && terraform apply. STAGE=dev or stg or prod
sh deploy.sh [STAGE]

# terraform destroy. STAGE=dev or stg or prod
sh destroy.sh [STAGE]
```