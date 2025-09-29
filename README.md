# Simple EKS Cluster

A minimal Terraform configuration for an EKS cluster in EU (Frankfurt).

## What you get

- EKS cluster in `eu-central-1`
- 1 t3.medium SPOT instance (cheapest option)
- Public subnets only (no NAT gateway costs)

## Usage

1. **Deploy**:
   ```bash
   terraform init
   terraform apply
   ```
 
2. **Configure kubectl**:
   ```bash
   aws eks update-kubeconfig --region eu-central-1 --name provablemarkets-mineks-cluster
   ```

3. **Test**:
   ```bash
   kubectl get nodes
   ```

4. **Cleanup**:
   ```bash
   terraform destroy
   ```

## Files

- `providers.tf` - AWS provider
- `variables.tf` - Cluster name variable  
- `vpc.tf` - VPC and subnets
- `eks-cluster.tf` - EKS cluster
- `eks-nodegroup.tf` - Worker nodes
- `outputs.tf` - Cluster info