variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "devops"
}

variable "ami" {
  type        = string
  description = ""
  default     = "ami-0cff7528ff583bf9a"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}
