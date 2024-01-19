variable "ami" {
  default = "ami-081609eef2e3cc958"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-0012107af37e36eec"]
}

variable "zone_id" {
  default = "Z05050322P8QFCN8M8LU9"
}

variable "components" {
   default     = {
      frontend = {
        name   = "frontend-dev"
        instance_type = "t3.micro"
      }
      backend = {
              name = "backend-dev"
              }

      mysql = {
              name = "mysql-dev"
              instance_type = "t3.small"
      }

   }
}