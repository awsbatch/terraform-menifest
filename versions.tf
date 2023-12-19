terraform {
  required_version = ">= 1.6.6, < 2.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  # defin tf stat file where you want to store

  /*backend "local" {
    path = "./tfstate/terraform.tfstate"
  }
*/
}

/*terraform {
  backend "local" {
    path = "./mytfstate/terraform.tfstate"
    }
}*/

/*provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAQTBP3PVNL7ICZ"
  secret_key = "AeBYb0iM6899PjUNJnVCV2JSv9QUKou4uyX"
}*/

provider "aws" {
  region     = "us-west-1"
  profile = "ravendra"
  alias   = "aws-west-1"
}

