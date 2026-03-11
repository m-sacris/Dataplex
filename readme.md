```bash
# 1. Initialize Terraform (downloads the Google provider and registers the module)
terraform init

# 2. Validate the configuration syntax
terraform validate

# 3. Format all .tf files recursively
terraform fmt -recursive

# 4. Preview the execution plan without connecting to Google Cloud
terraform plan -refresh=false
```
