# Terraform Import EC2 Instance
This guide will help you import an existing AWS EC2 instance into your Terraform configuration using the `terraform import` command.

## Prerequisites

Before you start, ensure you have the following:

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- AWS CLI installed and configured with appropriate credentials.

## Import Process

1. **Create Terraform Configuration**: If you haven't already, set up your Terraform configuration to manage AWS resources, including an EC2 instance.

2. **Identify the Resource**: Find the EC2 instance in your AWS account that you want to import. Note down its ID or other identifying information.

3. **Add Resource to Terraform Configuration**: In your Terraform configuration (`.tf` files), add a resource definition for the EC2 instance with the same type and attributes as the existing instance. Here's an example:

    ```hcl
    resource "aws_instance" "example" {
      ami           = "ami-0c55b159cbfafe1f0"
      instance_type = "t2.micro"
      # Add other instance attributes here
    }
    ```

4. **Initialize the Configuration**: Run the following command to initialize your Terraform configuration:

    ```shell
    terraform init
    ```

5. **Import the Resource**: Use the `terraform import` command to import the existing EC2 instance. Replace `<resource_name>` with the name of the resource block in your configuration and `<instance_id>` with the AWS instance ID:

    ```shell
    terraform import aws_instance.import_demo <instance_id>
    ```

6. **State File Update**: Terraform will create or update your Terraform state file with the imported resource. You should see a message confirming the import.

7. **Review and Update**: Review your Terraform configuration and update any other attributes or settings for the imported resource as needed.

8. **Apply Changes**: Apply your changes with `terraform apply` to ensure that Terraform manages the imported resource in line with your configuration.

## Example

Here's an example of how the Terraform code might look after importing an EC2 instance:

```hcl
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  # Other attributes and settings
}
