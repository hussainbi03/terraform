resource "aws_instance" "this" {
  ami                    = var.ami_id # This is our devops-practice AMI ID
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type          = var.environment == "dev" ? "t3.small" : "t3.micro"  # this is condition.
  tags = var.ec2_tags
}


resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "allow TLS inbuond traffic and all outbound traffic"

  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks

  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags  =  var.sg_tags
}