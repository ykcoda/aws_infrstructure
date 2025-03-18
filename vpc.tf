resource "aws_vpc" "dev_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${var.project}-${var.env}-VPC"
  }
}