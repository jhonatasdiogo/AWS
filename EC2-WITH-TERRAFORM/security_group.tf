resource "aws_security_group" "SG_TF" {
  name        = "SG_TF"
  description = "Permite acesso SSH as instancias"

  ingress {
    description      = "libera_ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}