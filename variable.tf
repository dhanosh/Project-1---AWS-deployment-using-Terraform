variable "region" {
  default = "us-west-1"
}

variable "access_key" {}

variable "secret_key" {}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "vpc_tenancy" {
  default = "default"
}

variable "az" {
  type    = list(string)
  default = ["us-west-1b", "us-west-1c"]
}

variable "pub_subnet_cidr" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "priv-web-sub-cidr" {
  type    = list(string)
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "priv-intlb-sub-cidr" {
type = list(string)
default = ["10.0.5.0/24", "10.0.6.0/24"]
}

variable "priv-app-sub-cidr" {
type = list(string)
default = ["10.0.7.0/24", "10.0.8.0/24"]
}

variable "priv-db-sub-cidr" {
type = list(string)
default = ["10.0.9.0/24", "10.0.10.0/24"]
}

