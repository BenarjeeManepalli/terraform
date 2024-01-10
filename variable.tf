variable "instance-type" {
    type = string
    default = "t2.micro"
}

variable "instance-name" {
    type = string
    default = "web"
}

variable "instance-ami-id" {
    type = list
    default = [ami-03265a0778a880afb]
}

variable "sg-name" {
    type = string
    default = "roboshop-all-aws"
}

variable "sg-description"{
    type = string
    default = "Allow TLS inbound traffic"
}

variable "sg-from-port"{
    type = number
    default = 0
}

variable "sg-to-port"{
    type = number
    default = 0
}

variable "sg_cidr_blocks"{
    type = number
    default = "0.0.0.0/0"
}