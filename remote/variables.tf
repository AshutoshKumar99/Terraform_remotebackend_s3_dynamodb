variable "region" {
  default = "ap-south-1"
}

variable "ami" {
    default = "ami-0f5ee92e2d63afc18" 
}

variable "instance-type" {
 default = "t2.micro"  
}

variable "tags" {

    default = "Hello My new RemoteDemoVM"
  
}