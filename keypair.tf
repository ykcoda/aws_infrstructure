
resource "aws_key_pair" "ec2_keypair" {
  key_name   = "${var.env}-${var.key_name}"
  public_key = var.public_key
  
    tags = {
        Name = "${var.project}-${var.env}-keypair"
    }
}


