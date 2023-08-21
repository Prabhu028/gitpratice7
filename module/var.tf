variable "resource_group_name" {
    type = string
    description = "this is resourcegrp"
  
}
variable "location" {
    type = string
    description = "this is location"
  
}


variable "network_range" {
  type        = string
  
  description = "this is network range"
}

variable "subnet_names" {
  type        = list(string)
  
  description = "these are subnet names"
}