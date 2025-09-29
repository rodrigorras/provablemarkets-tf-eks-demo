output "cluster_endpoint" {
  value = aws_eks_cluster.main.endpoint
}

output "cluster_name" {
  value = aws_eks_cluster.main.name
}

output "kubectl_config" {
  value = "aws eks update-kubeconfig --region eu-central-1 --name ${aws_eks_cluster.main.name}"
}