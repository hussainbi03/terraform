variable "instance" {
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "zone_id" {
  default = "Z079719627I64Y15REB22" 
}

variable "domain_name" {
  default = "shabbupractice.online"
}