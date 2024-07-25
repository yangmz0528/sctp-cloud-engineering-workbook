terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

provider "aws" {
  region  = "ap-northeast-1"

}

provider "aws" {
  region  = "ap-southeast-1"
  alias   = "prod"
}

