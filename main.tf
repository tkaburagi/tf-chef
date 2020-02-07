terraform {
  required_version = "~> 0.12" 
}

# Configure the Chef provider
provider "chef" {
	server_url = "https://api.chef.io/organizations/kabu/"

	# You can set up a "Client" within the Chef Server management console.
	client_name  = "my-first-chef-client"
	key_material = var.key_material
}