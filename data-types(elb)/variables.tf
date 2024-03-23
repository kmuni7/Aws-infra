variable "elb-name" {
    description = "Name fo the elb for representation"
    type = string
}
variable "availability_zones" {
    description = "describing availability zones"
    type = list(string)
}
variable "timeout" {
    description = "timeout for the elb resource"
    type = number
}