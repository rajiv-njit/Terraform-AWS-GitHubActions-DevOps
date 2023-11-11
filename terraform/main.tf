# In the main.tf file, you'll find a basic AWS provider configuration and an example resource (EC2 instance). 
# Update the region, AMI ID, and key pair name according to your preferences.

provider "aws" {
  region = "us-east-1" # Update with your desired AWS region
}

# Define your AWS resources below
resource "aws_instance" "example_instance" {
  ami           = "ami-0c55b159cbfafe1f0" # Update with your desired AMI ID
  instance_type = "t2.micro"
  key_name      = "your-key-pair-name"    # Update with your key pair name

  tags = {
    Name = "example-instance"
  }
}
