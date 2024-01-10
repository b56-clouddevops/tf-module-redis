# resource "aws_route53_record" "redis_dns_record" {
#   zone_id = data.terraform_remote_state.vpc.outputs.PRIVATE_HOSTED_ZONE_ID 
#   name    = "redis-${var.ENV}.${data.terraform_remote_state.vpc.outputs.PRIVATE_HOSTED_ZONE_NAME}"
#   type    = "CNAME"
#   ttl     = 10
#   records = [aws_elasticache_cluster.redis.]
# }

output "redis_op" {
  value  = aws_elasticache_cluster.redis
}