terraform { #Terraform block 
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.59.0"
    }
  }
}

provider "aws" { #Provider block
  # Configuration options   
   profile = "labbal"
   region = var.aws_region
}
