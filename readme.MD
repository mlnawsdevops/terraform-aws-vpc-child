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


# Inputs
1) project_name(Mandatory): user must supply their project name.
2) environment(Mandatory): user must supply their environment name.
3) vpc_cidr(Mandatory): user must supply their vpc-cidr.
4) enable_dns_hostnames(optional): defaults to true.
5) common_tags(optional): Default is empty. user can supply tags in map(string) format.
6) vpc_tags(optional): Default is empty. user can supply tags in map(string) format.
7) igw_tags(optional): default is empty. user can supply tags in map(string) format.
8) public_subnet_cidrs(Mandatory): user must supply only 2 valid public subnet cidrs.
9) private_subnet_cidrs(mandatory): user must supply only 2 valid private subnet cidrs.
10) database_subnet_cidrs(mandatory): user must supply only 2 valid database subnet cidrs.
11) public_subnet_tags(optional): default is empty. user can supply tags in map(string) format.
12) private_subnet_tags(optional): default is empty. user can supply tags in map(string) format.
13) database_subnet_tags(optional): default is empty. user can supply tags in map(string) format.
14) nat_gatewat_tags(optional): default is empty. user can supply tags in map(string) format.
15) public_route_table_tags(optional): default is empty. user can supply tags in map(string) format.
16) private_route_table_tags(optional): default is empty. user can supply tags in map(string) format.
17) database_route_table_tags(optional): default is empty. user can supply tags in map(string) format.
18) is_peering_requires(optional): default is false
19) vpc_peering_tags(optional): default is empty. user can supply tags in map(string) format.


# output
1) vpc_id: VPC ID created
2) public_subnet_ids: list of 2 public subnet ids created.
3) private_subnet_ids: list of 2 private subnet ids created.
4) database_subnet_ids: list of 2 database subnet ids created.