resource "aws_security_group" "my_security_group" {
    name        = "${var.project}-${var.env}-security-group"
    description = "Allow inbound traffic on port 22 and 80"
    vpc_id      = aws_vpc.dev_vpc.id
    tags = {
        Name = "${var.project}-${var.env}-security-group"
    }

    ingress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}