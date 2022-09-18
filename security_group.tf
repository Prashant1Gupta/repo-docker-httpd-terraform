resource "aws_security_group" "HTTPD-docker_sg" {
  name        = var.sg_name
  description = var.sg_desc
  ingress = [
    {
      #enables http port
      description      = var.dock1_desc
      from_port        = var.dock1_port
      to_port          = var.dock1_port
      protocol         = var.proto
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    },

    {
      #enables custom port
      description      = var.dock2_desc
      from_port        = var.dock2_port
      to_port          = var.dock2_port
      protocol         = var.proto
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    },

    {
      #enables port SSH
      description      = var.ssh_desc
      from_port        = var.dock3_port
      to_port          = var.dock3_port
      protocol         = var.proto
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]
  egress = [
    {
      description      = "Outgoing connection"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]


  tags = {
    Name = "httpd-docker-sg"
  }
}
