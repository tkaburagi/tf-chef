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

# Create a Chef Environment
resource "chef_environment" "production" {
	name = "production"
}

# Create a Chef Role
resource "chef_role" "app_server" {
	name = "app_server"

	run_list = [
		"recipe[terraform]",
	]
}