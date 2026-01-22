terraform {
  backend "s3" {
    bucket         = "rian-terraform-remote-state"
    key            = "envs/docker/terraform.tfstate"
    region         = "ap-northeast-2"
    dynamodb_table = "rian-terraform-remote-state-lock"
    encrypt        = true
  }
}
