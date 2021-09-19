# Resource: EC2 Instance
resource "aws_instance" "demo1-Ec2" {
  ami = "ami-00dfe2c7ce89a450b"
  instance_type = "t2.micro"
  user_data = file("${path.module}/demo1-Ec2-app.sh") #Terraform file function
  tags = {
    "Name" = "Ec2 Demo"
  }
}