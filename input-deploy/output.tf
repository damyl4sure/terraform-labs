# Terraform Output Values

#EC2 Instamces Public IP
output "instance_publicip" {
  description = "Ec2 instance public IP"
  value = aws_instance.Input-EC2-demo.public_ip
} 

#EC2 Instance Public DNS
output "instance_publicdns" {
  description = "Ec2 instance public DNS"
  value = aws_instance.Input-EC2-demo.public_dns
}