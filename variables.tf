variable "project_name" {
    type = string

}

variable "environment" {
    type = string

}

variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    default = true
}

#optional
variable "common_tags" {
    type = map

}

#optional
variable "vpc_tags" {
    type = map

}

variable "igw_tags" {
    type = map
    default = {}
}

variable "public_subnet_cidrs" {
    type = list 
    validation {
      condition = length(var.public_subnet_cidrs) == 2
      error_message = "Please provilde only 2 valid public subnet cidrs"
    }
  
}

variable "public_subnet_tags" {
    default = {}
}

variable "private_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.private_subnet_cidrs) == 2
        error_message = "Please provide only 2 valid private subnet cidrs"
    }
}

variable "private_subnet_tags" {
    default = {}
}

variable "database_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.database_subnet_cidrs) == 2
        error_message = "Please provide only 2 valid database subnet CIDRs"
    }
}

variable "database_subnet_tags" {
    default = {}
}

variable "db_subnet_group_tags" {
    default = {}
}

variable "nat_gateway_tags" {
    default = {}
}

variable "public_route_table_tags" {
    default = {}
}

variable "private_route_table_tags" {
    default = {}
}

variable "database_route_table_tags" {
    default = {}
}

variable "is_peering_required" {
    type = bool
    default = false
}

variable "vpc_peering_tags" {
    default = {}
}