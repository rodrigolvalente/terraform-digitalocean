resource "digitalocean_vpc" "k8s-network" {
  name     = "k8s-network"
  region   = var.region
  ip_range = "192.168.25.0/24"
}

# resource "digitalocean_ssh_key" "k8s-nodes" {
#   name       = "ssh-key"
#   public_key = file(var.public_key_path)
# }
