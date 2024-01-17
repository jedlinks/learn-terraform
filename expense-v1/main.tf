resource                    = "aws_instance" "frontend" {
  ami                       = "ami-081609eef2e3cc958"
  instance_type             = "t3.micro"
  vpc_security_group_ids    = ["sg-0012107af37e36eec"]

  tags = {
    Name = "frontend-dev"
    }
}

resource                    = "aws_instance" "backend" {
  ami                       = "ami-081609eef2e3cc958"
  instance_type             = "t3.micro"
  vpc_security_group_ids    = ["sg-0012107af37e36eec"]

  tags = {
    Name = "backend-dev"
    }
}
resource                    = "aws_instance" "mysql" {
  ami                       = "ami-081609eef2e3cc958"
  instance_type             = "t3.micro"
  vpc_security_group_ids    = ["sg-0012107af37e36eec"]

  tags = {
    Name = "mysql-dev"
    }
}