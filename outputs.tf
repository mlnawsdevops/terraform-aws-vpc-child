output "vpc_id" {
    value = aws_vpc.main.id
}

# output "az_info" {
#     value = data.aws_availability_zones.available
# }

# output "default_vpc_info" {
#     value = data.aws_vpc.default.id
# }

output "public_subnet_ids" {
    value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
    value = aws_subnet.private[*].id
}

output "database_subnet_ids" {
    value = aws_subnet.database[*].id
}

output "database_subnet_group_name" {
    value = aws_db_subnet_group.default.name
}