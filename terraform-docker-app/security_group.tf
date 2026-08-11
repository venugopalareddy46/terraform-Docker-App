resource "aws_security_group" "sg" {
  description = "Allow inbound traffic for web server"

  ingress {
    description = "Allow SSH "
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = var.ssh_protocol
    cidr_blocks = var.cidr_blocks
  }
  ingress {
    description = "Allow HTTP"
    from_port   = var.http_port
    to_port     = var.http_port
    protocol    = var.http_protocol
    cidr_blocks = var.cidr_blocks
  }
  ingress {
    description = "Allow HTTPS"
    from_port   = var.https_port
    to_port     = var.https_port
    protocol    = var.https_protocol
    cidr_blocks = var.cidr_blocks
  }
  egress {
    description = "Allow all outbound traffic"
    from_port   = var.egress_port
    to_port     = var.egress_port
    protocol    = var.egress_protocol
    cidr_blocks = var.cidr_blocks
  }

  tags = {
    Name = "sg"
  }

}
