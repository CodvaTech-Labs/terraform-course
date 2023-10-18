terraform {
  backend "s3" {
    bucket         = "ctl-tf-state-lock-demo"
    key            = "asg-demo/asg-tf"
    region         = "ap-south-1"
    dynamodb_table = "tf-lock-state"
  }
}
