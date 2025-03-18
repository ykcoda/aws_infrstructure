resource "aws_instance" "web_server" {
    ami = "ami-08b5b3a93ed654d19"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.dev_subnet_1.id
    associate_public_ip_address = true
    key_name = aws_key_pair.ec2_keypair.key_name
    tags = {
        Name = "${var.project}-${var.env}-Web-Server"
    }
}


resource "aws_instance" "db_server" {
    ami = "ami-08b5b3a93ed654d19"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.dev_subnet_2.id
    associate_public_ip_address = true
    key_name = aws_key_pair.ec2_keypair.key_name
    tags = {
        Name = "${var.project}-${var.env}-DB-Server"
    }
}