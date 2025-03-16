resource "aws_vpc" "dev_vpc" { 
    cidr_block = "10.1.0.0/16" 
    tags = { name = "${var.project}-${var.env}-VPC" }     
}