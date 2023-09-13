# Create a EC2 ins
resource "aws_instance" "web1" {
  ami           = var.ami
  instance_type = var.instance-type

  tags = {
    Name = var.tags
  }
}