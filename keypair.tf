# This file creates a key pair for EC2 instances and saves the private key to a local file
# The public key is loaded from a local file
# The private key is saved to a local file
# The key pair is tagged with the project name and environment name
resource "aws_key_pair" "ec2_keypair" {
  key_name   = "${var.env}-${var.key_name}"
  public_key = file("~/.ssh/my-terraform-ec2-key.pub")  #Load public key from local file
  
    tags = {
        Name = "${var.project}-${var.env}-keypair"
    }
}


