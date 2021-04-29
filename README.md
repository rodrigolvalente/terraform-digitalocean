Terraform on Digital Ocean


terraform apply -var-file="terraform.tfvars"

or

export TF_VAR_do_token="xyz"
export TF_VAR_private_key_path="/my/key/path"
export TF_VAR_public_key_path="/my/key/path"

terraform plan / apply 


or

terraform apply -var="do_token=xyz" -var="private_key_path=/my/key/path" -var="public_key_path=/my/key/path" 
