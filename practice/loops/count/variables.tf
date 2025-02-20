variable "instances" {
  default = ["mysql", "backend", "frontend"]
}
variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}
variable "common_tags" {
  type = map
  default = {
    project = "expense"
    Environment = "dev"
  }
}
  
variable "from_port" {
  type    = number
  default = 22
}
variable "to_port" {
  type    = number
  default = 22
}

variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map(any)
  default = {
    Name = "expense-backend-dev"
  }
}

variable zone_id {
  default = "Z079719627I64Y15REB22"
  }

variable domain_name {
  default = "shabbupractice.online"
}