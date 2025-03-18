resource "aws_security_group" "my_security_group" {
    name        = "${var.project}-${var.env}-security-group"
    description = "Allow inbound traffic on port 22 and 80"
    vpc_id      = aws_vpc.dev_vpc.id
    
    ingress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    #ingress{
    #    from_port   = -1
    #    to_port     = -1
    #    protocol    = "icmp"
    #  cidr_blocks = ["0.0.0.0/0"]
    #}
}