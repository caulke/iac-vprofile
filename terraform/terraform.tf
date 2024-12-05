terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.25.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }
  }

 backend "s3" {
    bucket         = "pamy-s3-bucket"
    key            = "env/state"
    region         = "us-east-2"
    access_key     = AWS_ACCESS_KEY_ID
    secret_key     = AWS_SECRET_ACCESS_KEY
  }


  required_version = "~> 1.6.3"
}
##
##
##
