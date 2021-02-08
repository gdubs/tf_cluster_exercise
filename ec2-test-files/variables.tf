variable "amis" {
  type = map(any)
  default = {
    "asia" = "ami-blablabla-asia"
    "na"   = "ami-foofoofoo-usa"
  }
}

variable "location" {
  type    = string
  default = "eur"
}

variable "isdev" {
  type = bool
}
