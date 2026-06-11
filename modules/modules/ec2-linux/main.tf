resource "aws_instance" "linux_server" {

  ami           = var.ami_id

  instance_type = var.instance_type

}
