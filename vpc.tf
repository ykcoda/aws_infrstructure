resource "aws_vpc" "dev_vpc" { 
    cidr_block = "10.0.1.0/16" 
    tags = { name = "${var.project}-${var.env}-VPC" }     
}