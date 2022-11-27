resource "aws_acm_certificate" "root" {
  domain_name = data.aws_route53_zone.this.name

  validation_method = "DNS"

  tags = {
    Name = "${local.name_prefix}-appfoobar-link"
  }

  lifecycle {
    create_before_destroy = true
  }
}

output "data_route53" {
  value = data.aws_route53_zone.this.name
}
output "acm_data" {
  value     = aws_acm_certificate.root
  sensitive = true
}

resource "aws_acm_certificate_validation" "root" {
  certificate_arn = aws_acm_certificate.root.arn
}
