resource "tls_private_key" "ec2_private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}



resource "aws_key_pair" "ec2_keypair" {
  key_name   = "${var.env}-${var.key_name}"
  public_key = tls_private_key.ec2_private_key.public_key_openssh   
  
    tags = {
        Name = "${var.project}-${var.env}-keypair"
    }
}


resource "local_file" "ec2_private_key" {
            content = tls_private_key.ec2_private_key.private_key_pem
            filename = "${var.env}-key-name.pem"     
}

