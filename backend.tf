terraform {
  backend "s3" {
    bucket         = "cloud-terraform-backend-repo"
    encrypt        = true
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dynamodb-terraform-backend"
  }
}
