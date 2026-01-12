# Terraform AWS VPC module customized

This module is going to create the following reesources. For HA we are going to get first 2 AZ.
* 1) VPC
* 2) Internet gateway associated with VPC
* 3) 2 Public Subnets
* 4) 2 Private Subnets
* 5) 2 Database Subnets
* 6) EIP
* 7) NAT gateway (Network Address Translator)
* 8) Public route table
* 9) Private route table
* 10) Database route table
* 11) Public routes -- IGW
* 12) Private routes -- NAT
* 13) Database routes -- NAT
* 14) Route table associations with subnets
* 15) Peering with default VPC(if required)
* 16) Peering routes in acceptor and requestor 
* 17) expense VPC Route tables integrating with default VPC using peering id
* 18) default VPC route table integrating with expense VPC using peering id

