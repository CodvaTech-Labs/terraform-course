# terraform-course
All Terraform Codes (Infra As Code)

Certainly! Here's a `README.md` file for installing the AWS Command Line Interface (AWS CLI) on Windows, Linux, and macOS:

```markdown
# AWS CLI Installation Guide

This guide provides step-by-step instructions on how to install the AWS Command Line Interface (AWS CLI) on different operating systems: Windows, Linux, and macOS.

## Prerequisites

Before you begin, ensure that you have the following:

- An AWS account with appropriate permissions.
- Internet connectivity for downloading and installation.
- Administrative privileges (Windows) or superuser (Linux/macOS) access.

## Installation on Windows

### Step 1: Download AWS CLI Installer

1. Visit the [AWS CLI Downloads page](https://aws.amazon.com/cli/) to download the Windows installer.

2. Run the installer executable and follow the on-screen instructions.

### Step 2: Verify Installation

1. Open a command prompt or PowerShell.

2. Type the following command to verify the installation:

   ```shell
   aws --version
   ```

   You should see the installed AWS CLI version.

## Installation on Linux (including Ubuntu)

### Step 1: Install via Package Manager

1. Open a terminal.

2. Use your package manager to install the AWS CLI. On Ubuntu, you can use `apt`:

   ```shell
   sudo apt update
   sudo apt install awscli
   ```

   On other Linux distributions, replace `apt` with the appropriate package manager, like `yum` for CentOS.

### Step 2: Verify Installation

1. In the terminal, type the following command to verify the installation:

   ```shell
   aws --version
   ```

   You should see the installed AWS CLI version.

## Installation on macOS

### Step 1: Install via Homebrew

1. Open a terminal.

2. If you don't have Homebrew, install it by running:

   ```shell
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

3. Install the AWS CLI with Homebrew:

   ```shell
   brew install awscli
   ```

### Step 2: Verify Installation

1. In the terminal, type the following command to verify the installation:

   ```shell
   aws --version
   ```

   You should see the installed AWS CLI version.

## Configuration

After installation, you need to configure the AWS CLI with your AWS access keys and other settings. Use the `aws configure` command to set up your credentials and default region.


# Installing Terraform on Windows, Linux, and macOS

This guide will walk you through the steps to install Terraform, a popular Infrastructure as Code (IaC) tool, on Windows, Linux, and macOS.

## Windows

### Prerequisites

- A Windows computer with administrative privileges.

### Installation Steps

1. **Download Terraform**:
   - Visit the [Terraform Downloads page](https://www.terraform.io/downloads.html).
   - Download the Windows version of Terraform.
   - Extract the downloaded ZIP archive.

2. **Add Terraform to Path**:
   - Open the Windows Start menu and search for "Environment Variables."
   - Click on "Edit the system environment variables."
   - In the System Properties window, click the "Environment Variables" button.
   - Under "System variables," find and select "Path," then click "Edit."
   - Click "New" and add the path to the directory where you extracted Terraform.

3. **Verify Installation**:
   - Open a Command Prompt or PowerShell window.
   - Run `terraform -version` to verify that Terraform is installed.

## Linux

### Prerequisites

- A Linux machine with terminal access.

### Installation Steps

1. **Download Terraform**:
   - Open a terminal window.
   - Run the following command to download the latest version of Terraform:

     ```bash
     wget https://releases.hashicorp.com/terraform/[latest_version]/terraform_[latest_version]_linux_amd64.zip
     ```

   - Replace `[latest_version]` with the version you want to download.

2. **Extract and Install**:
   - Unzip the downloaded file:

     ```bash
     unzip terraform_[latest_version]_linux_amd64.zip
     ```

   - Move the `terraform` binary to a directory in your PATH, like `/usr/local/bin/`.

3. **Verify Installation**:
   - Open a terminal window.
   - Run `terraform -version` to verify that Terraform is installed.

## macOS (MacBook)

### Prerequisites

- A macOS computer.

### Installation Steps

1. **Download Terraform**:
   - Open a terminal window.
   - Run the following command to download the latest version of Terraform:

     ```bash
     wget https://releases.hashicorp.com/terraform/[latest_version]/terraform_[latest_version]_darwin_amd64.zip
     ```

   - Replace `[latest_version]` with the version you want to download.

2. **Extract and Install**:
   - Unzip the downloaded file:

     ```bash
     unzip terraform_[latest_version]_darwin_amd64.zip
     ```

   - Move the `terraform` binary to a directory in your PATH.

3. **Verify Installation**:
   - Open a terminal window.
   - Run `terraform -version` to verify that Terraform is installed.

## Author
CodvaTech Labs

