#Resources: create EC2 Instance
resource "aws_instance" "Input-EC2-demo" {
  ami           = data.aws_ami.amazon-linux2.id
  instance_type = var.instance_type
  user_data = file("${path.module}/input-Ec2-app.sh") #Terraform file function
  key_name = var.instance_keypair
  vpc_security_group_ids = [
    aws_security_group.vpc-ssh.id, 
    aws_security_group.vpc-web-traffic.id
  ]
  tags = {
    Name = "Input-EC2-demo"
  }
}