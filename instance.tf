data "template_file" "HTTPD_instance_data" {
  template = file("${path.module}/userdata.sh")
}

#EC2 in us east 1
resource "aws_instance" "dockerInstance" {
  ami                    = var.ubuntu_ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.HTTPD-docker_sg.id]
  key_name               = var.key_name
  user_data              = data.template_file.HTTPD_instance_data.template

}
