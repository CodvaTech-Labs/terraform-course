variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami_id" {
  type    = string
  default = "ami-04893cdb768d0f9ee"

}

variable "subnet_id" {
  type = string
  default = "subnet-047e21219fc4428aa"
}

variable "key_name" {
  type    = string
  default = "devops-demo"
}