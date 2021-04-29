resource "digitalocean_kubernetes_cluster" "my-k8s" {
  name   = "myk8s"
  region = var.region
  # Grab the latest version slug from `doctl kubernetes options versions`
  version  = var.k8s_version
  vpc_uuid = digitalocean_vpc.k8s-network.id


  node_pool {
    name       = "worker-pool"
    size       = var.k8s_node_type
    node_count = var.k8s_node_count
  }
}

output "k8s_kubeconfig" {
  value = digitalocean_kubernetes_cluster.my-k8s.kube_config[0].raw_config

}

