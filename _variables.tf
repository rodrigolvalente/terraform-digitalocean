variable "region" {
  default = "nyc1"
  type    = string
}

variable "do_token" {
  description = "Token da API do DigitalOCean"
  type        = string

}
variable "private_key_path" {
  default = ""
  type    = string
}

variable "public_key_path" {
  default = ""
  type    = string
}

variable "qtd_hosts" {
  default     = 3
  description = "Quantity of hosts on K8S"
  type        = number
}

variable "droplet-type" {
  default     = "s-2vcpu-4gb"
  description = "VM Type"
  type        = string
}

variable "droplet-image" {
  default     = "ubuntu-18-04-x64"
  description = "VM image"
  type        = string
}

variable "k8s_version" {
  default = "1.20.2-do.0"
  type    = string
}

variable "k8s_node_type" {
  default = "s-2vcpu-4gb"
  type    = string
}

variable "k8s_node_count" {
  default = 3
  type    = string
}


