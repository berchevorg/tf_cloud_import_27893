 terraform {
   backend "remote" {
     hostname     = "app.terraform.io"
     organization = "georgiman" # YOUR_ORG_HERE

     workspaces {
       name = "tf_cloud_import" # YOUR_WORKSPACE_HERE
     }
   }
 }

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web1" {
  ami           = "ami-056569351c9d4c8cf"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloNginx1"
  }
}
