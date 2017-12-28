terraform {
  backend "s3" {
    bucket = "terraform-tfstate-6yh7ij9"
    key = "TerraformTest/test0"
  }
}