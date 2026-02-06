output "alb_dns_name" {
  value = aws_lb.alb.dns_name
}

output "private_key_pem" {
  value     = tls_private_key.this.private_key_pem
  sensitive = true
}
