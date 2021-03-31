# Terraform on Google Cloud
Terraform code to create control plane and worker nodes for k8s.

## Instructions

```
export TF_VAR_project=[PROJECT]
export TF_VAR_region=[REGION]
export TF_VAR_cp_vm_count=[CONTROL_PLANE_VM_COUNT]
export TF_VAR_node_vm_count=[WORKER_NODE_VM_COUNT]
export GOOGLE_APPLICATION_CREDENTIALS="[PATH]"
terraform 
```