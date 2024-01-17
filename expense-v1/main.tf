resource "aws_instance" "frontend" {
  ami                       = "ami-081609eef2e3cc958"
  instance_type             = "t3.micro"
  vpc_security_group_ids    = ["sg-0012107af37e36eec"]

  tags = {
    Name = "frontend-dev"
    }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z05050322P8QFCN8M8LU9"
  name    = "frontend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "backend" {
  ami                       = "ami-081609eef2e3cc958"
  instance_type             = "t3.micro"
  vpc_security_group_ids    = ["sg-0012107af37e36eec"]

  tags = {
    Name = "backend-dev"
    }
}

resource "aws_route53_record" "backend" {
  zone_id = "Z05050322P8QFCN8M8LU9"
  name    = "backend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.backend.private_ip]
}

resource "aws_instance" "mysql" {
  ami                       = "ami-081609eef2e3cc958"
  instance_type             = "t3.micro"
  vpc_security_group_ids    = ["sg-0012107af37e36eec"]

  tags = {
    Name = "mysql-dev"
    }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z05050322P8QFCN8M8LU9"
  name    = "mysql-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}