# Setup Static Website using Terraform 

This Terraform code is used to configure Static Website using Terrraform 

## Prerequisites

Before applying this configuration, make sure you have:

1. AWS CLI installed and configured with appropriate credentials.

## Configuration

Edit the `backend.tf` file to match your specific settings. Here's what each parameter means:

- `bucket`: The name of the S3 bucket where your Terraform state files will be stored. Replace `"ctl-tf-state-lock-demo"` with your desired bucket name.

- `key`: The key is a unique identifier for your state file within the S3 bucket. Replace `"s3"` with your desired key.

- `region`: The AWS region where the S3 bucket and DynamoDB table will be created.

- `dynamodb_table`: (Optional) If you want to enable state locking, provide the name of a DynamoDB table to be used for locking. Replace `"tf-lock-state"` with your desired table name.

- `variables.tf`: Update variables.tf file Replace `"ctl-static-website-devops"`  and `"logs-ctl-static-website-devops"` with actual bucket name which for static website and log file bucket

- `website-bucket.tf`: Update website-bucket.tf with your bucket name and another bucket used for logging purpose. Also update S3  ARN

 ```shell
   bucket = "ctl-static-website-devops"
   Resource": "arn:aws:s3:::ctl-static-website-devops/*


## Usage

1. Initialize the Terraform configuration:

   ```shell
   terraform init
