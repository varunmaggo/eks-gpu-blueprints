provider "aws" {
  region = "ap-southeast-2"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}