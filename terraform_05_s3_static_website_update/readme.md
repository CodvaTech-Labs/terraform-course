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

- `variables.tf`: Update variables.tf file Replace `"ctl-static-website-devops"`  and `"logs-ctl-static-website-devops"` with actual bucket name which used for static website and log file bucket. (Note - We required two buckets , one for actual code and another for logs. Also don't create bucket manually as terraform code will create bucket) 

- `website-bucket.tf`: Update bucket name and S3 Resource ARN

 ```shell
   bucket = "ctl-static-website-devops"
   Resource": "arn:aws:s3:::ctl-static-website-devops/*
```

- `s3_bucket_object.tf`: Update file as per your bucket name 

 ```shell
   bucket= "ctl-static-website-devops"
```

- `logging_bucket.tf`: Update file as per your logging bucket name 

 ```shell
   bucket= "bucket = "logs-ctl-static-website-devops""
```


- `policy.json`: Update S3 ARN in policy JSON file

 ```shell
   "Resource": "arn:aws:s3:::ctl-static-website-devops/*"
```


## Usage

1. Initialize the Terraform configuration:

   ```shell
   terraform init
   ```

2. Validate terraform configuration using terraaform plan :

   ```shell
   terraform plan
   ```

3. : Run terraform apply for S3 bucket provisioning. This will create new S3 bucket , S3 log file bucket , enable Static Website and upload code for Static Website

   ```shell
   terraform apply 
   ```
4. Browse application using S3 Static Website URL 
   
