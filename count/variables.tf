variable "instances" {
  default = ["mysql", "backend", "frontend"]

}

variable "zone_id" {
  default = "Z021448929NMXW4P65UQE"
}

variable "domain_name" {
  default = "shabbupractice.online"
}

variable "common_tags" {
  type = map(any)
  default = {
    project     = "expense"
    Environment = "dev"
  }
}
