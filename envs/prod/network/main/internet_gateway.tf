resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id

  tags = {
    Name = aws_vpc.this.tags.Name
  }
}

output "vpc_id" {
  value = aws_vpc.this.id
}
output "vpc_cidr" {
  value = var.vpc_cidr
}
