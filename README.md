# Terraform on Google Cloud
Terraform code to create control plane and worker nodes for k8s using kubeadm.

## Create CP and Worker node VMs

```
export TF_VAR_project=[PROJECT]
export TF_VAR_region=[REGION]
export TF_VAR_cp_vm_count=[CONTROL_PLANE_VM_COUNT]
export TF_VAR_node_vm_count=[WORKER_NODE_VM_COUNT]
export GOOGLE_APPLICATION_CREDENTIALS="[PATH]"
terraform apply
```

## Install K8s
```
cd k8s
export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook -i hosts cp_playbook.yml
ansible-playbook -i hosts worker_playbook.yml
```
