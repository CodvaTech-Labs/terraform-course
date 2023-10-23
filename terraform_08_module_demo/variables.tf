variable "ami_id" {
  type    = string
  default = "ami-04893cdb768d0f9ee"
}

variable "lb_security_group_name" {
  type    = string
  default = "module-demo-lb-http-sg"
}

variable "asg_security_group_name" {
  type    = string
  default = "module-demo-asg-http-sg"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type    = string
  default = "devops-demo"
}

variable "lb_name" {
  type    = string
  default = "module-lb-dashboard"
}

variable "asg_name" {
  type    = string
  default = "module-asg-dashboard"
}

variable "min_size" {
  type    = string
  default = "1"
}

variable "max_size" {
  type    = string
  default = "1"
}

variable "desired_capacity" {
  type    = string
  default = "1"
}
