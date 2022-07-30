resource "aws_instance" "bastion-linux" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "Remote State"
    Env  = "devops"
  }
}
