terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = ">= 2.8"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}
