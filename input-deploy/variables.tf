#Input  variables
# AWS region
variable "aws_region" {
  description = "Region in which AWS resources would be created"
  type = string
  default = "us-east-2"
}

# AWS EC2 instance type
variable "instance_type" {
  description = "EC2 instance type"
  type = string
  default = "t2.micro"
  
}
# AWS EC2 instance key pair
variable "instance_keypair" {
  description = "AWS EC2 key pair that needs to be associated with the created instance"
  type = string
  default = "terraform-key"

}