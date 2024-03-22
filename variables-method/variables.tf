variable "vpn_ip" {
  default = "101.20.30.50/32"
  description = "VPN service created in AWS"
}

variable "app_port" {
  default = 8080
}

variable "ssh_port" {
  default = 22
}