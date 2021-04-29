
# resource "digitalocean_droplet" "k8s-nodes" {
#   count = var.qtd_hosts

#   image    = var.droplet-image
#   name     = "node-${format("%01s", count.index + 1)}"
#   region   = digitalocean_vpc.k8s-network.region
#   size     = var.droplet-type
#   ssh_keys = [digitalocean_ssh_key.k8s-nodes.fingerprint]
#   vpc_uuid = digitalocean_vpc.k8s-network.id

#   connection {
#     host        = self.ipv4_address
#     type        = "ssh"
#     user        = "root"
#     agent       = false
#     private_key = file(var.private_key_path)
#   }

#   provisioner "remote-exec" {
#     inline = [
#       "export PATH=$PATH:/usr/bin",
#       "sudo apt-get update && sudo apt-get install -y apt-transport-https ca-certificates curl",
#       "sudo curl -fsSl https://get.docker.com | bash",
#       "sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -",
#       "echo \"deb https://apt.kubernetes.io/ kubernetes-xenial main\" | sudo tee /etc/apt/sources.list.d/kubernetes.list",
#       "sudo apt-get update && sudo apt-get install -y kubeadm kubelet kubectl"
#     ]
#   }
# }

# output "droplet_ip" {
#   value = digitalocean_droplet.k8s-nodes[0].ipv4_address
# }
