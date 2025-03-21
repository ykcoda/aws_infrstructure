resource "aws_subnet" "dev_subnet_1" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = var.subnet_1
  availability_zone = "us-east-1a"

  tags = {
    Name = "${var.project}-${var.env}-Subnet-1"
  }
}

resource "aws_subnet" "dev_subnet_2" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = var.subnet_2
  availability_zone = "us-east-1b"

  tags = {
    Name = "${var.project}-${var.env}-Subnet-2"
  }
}