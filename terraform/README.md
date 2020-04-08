# Terraform Container

This container could be used to validate terraform code and deploy it.

## How to update software version:

## Assumptions:
1. You have docker installed and available in $PATH
2. The bash script will log you in the ECR repo. If your default IAM profile does not allow this, you will need to switch profiles, or manually run the command using a profile defined.

1. vim Dockerfile
2. Replace `ENV TERRAFORM_VERSION=X.XX.XX` version with the newer version
3. Replace `ENV VAULT_VERSION=X.XX.XX` version with the newer version

4. ```
 bash -x ./build.sh
```