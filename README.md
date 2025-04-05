# 🚀 EKS GPU Blueprints for AI Workloads

This repo provisions an Amazon EKS cluster with NVIDIA GPU worker nodes using the EKS Blueprints Terraform module. Ideal for AI/ML workloads such as large language model training, inference, and generative applications.

## Features

- EKS cluster with GPU-enabled `g5.xlarge` node group
- NVIDIA Device Plugin installation via EKS Add-On
- Ready for HuggingFace Transformers, PyTorch, TensorFlow

## Setup

```bash
terraform init
terraform apply
```

## AI Workload Example

Make sure to request a GPU in your Pod spec:

```yaml
resources:
  limits:
    nvidia.com/gpu: 1
```# eks-gpu-blueprints
