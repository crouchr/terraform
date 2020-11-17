output "waf_nlb_eip_id" {
  value = aws_eip.waf_nlb_eip.id
}

output "waf_nlb_eip_public_ip" {
  value = aws_eip.waf_nlb_eip.public_ip
}
