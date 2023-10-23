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


   terraform apply
terraform destroy

Certainly! Here's a basic `README.md` file for the provided Terraform code:

```markdown
# Terraform S3 Backend Configuration

This Terraform code is used to configure the backend for storing your Terraform state files in an AWS S3 bucket. Using a remote backend like S3 is important for collaboration and state management.

## Prerequisites

Before applying this configuration, make sure you have:

1. AWS CLI installed and configured with appropriate credentials.

## Configuration

Edit the `backend.tf` file to match your specific settings. Here's what each parameter means:

- `bucket`: The name of the S3 bucket where your Terraform state files will be stored. Replace `"ctl-tf-state-lock-demo"` with your desired bucket name.

- `key`: The key is a unique identifier for your state file within the S3 bucket. Replace `"s3"` with your desired key.

- `region`: The AWS region where the S3 bucket and DynamoDB table will be created.

- `dynamodb_table`: (Optional) If you want to enable state locking, provide the name of a DynamoDB table to be used for locking. Replace `"tf-lock-state"` with your desired table name.

## Usage

1. Initialize the Terraform configuration:

   ```shell
   terraform init
   ```

2. Apply the configuration:

   ```shell
   terraform apply
   ```

3. Terraform will create the S3 bucket and, if specified, the DynamoDB table for state locking.

4. Your Terraform state files will be stored remotely in the S3 bucket specified.

## State Locking (DynamoDB)

State locking is a crucial feature to prevent conflicts when multiple users or processes are managing infrastructure. If you have specified a DynamoDB table, Terraform will use it for state locking. Ensure the table exists and has the necessary permissions.

## Cleanup

To destroy the resources created by this configuration, you can run:

```shell
terraform destroy
```

## Author

[Your Name]

## License

This project is licensed under the [License Name] - see the [LICENSE.md](LICENSE.md) file for details.

```

Please replace `[Your Name]` and `[License Name]` with your name and the appropriate license for your code if needed. You can also provide additional details or documentation specific to your use case.
