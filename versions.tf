##
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
