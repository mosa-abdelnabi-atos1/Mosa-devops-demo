# Public endpoint — paste this into your browser to test (Part 7)
output "public_endpoint" {
  description = "ALB DNS name — your public URL"
  value       = "http://${aws_lb.main.dns_name}"
}

# ECR URI — use this when tagging and pushing your Docker image (Part 5)
output "ecr_repository_url" {
  description = "Full ECR repository URI"
  value       = aws_ecr_repository.main.repository_url
}

# Names needed for the pipeline workshop (Part 8)
output "ecs_cluster_name" {
  description = "ECS cluster name"
  value       = aws_ecs_cluster.main.name
}

output "ecs_service_name" {
  description = "ECS service name"
  value       = aws_ecs_service.app.name
}

