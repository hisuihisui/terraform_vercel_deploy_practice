terraform {
  required_providers {
    vercel = {
      source  = "vercel/vercel"
      version = "~> 0.4"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}
