provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "demo" {
    ami="ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
    instance_type = "t2.micro"
    tags = {
    Name = "Terraform-Example-AWS"
}
}
