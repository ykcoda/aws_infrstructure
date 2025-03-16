terraform {
  cloud {
    organization = "ykcoda-Terraform-Lab"
    workspaces {
      name = "terraform-aws-lab-dev"
    }
  }
}