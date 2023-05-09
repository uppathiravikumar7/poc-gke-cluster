## This POC is for GKE cluster to create and node pool auto scaling by using terraform. Please follow below instructions on how to use.

### Before executing this code you need to have required bucket to be created to store terraform state file on cloud storage. On my case the bucket is: my-tf-state-bucket-012.

## Usage
Please configure below properties as per your customer on terraform.tfvars, this will be used liek environment specific like: DEV, QA, PROD projects on GCP

```hcl
#Terraform variable values as per Environment
project_id      = "<PROJECT_ID>"
region          = "<REQUIRED_REGION>"
zone            = "<REQUIRED_ZONE>"
#Subnet for gke
ip_cidr_range   = "10.10.0.0/24"
machine_type    = "e2-medium" # select customer required machine type
#worker node size
disk_size_gb    = 20 # size of your worker nodes, declare as per your customer need
# Autoscaling min & max worker nodes, this is used once your 100 pods get occupied 
min_node_count  = 2
max_node_count  = 3
#reguired gke_version
gke_version     = "1.26.2"

```

Then perform the following commands on the root folder:

- `terraform init` to get the plugins
- `terraform plan` to see the infrastructure plan
- `terraform apply` to apply the infrastructure build
- `terraform destroy` to destroy the built infrastructure

## Install Prerequisites.

### Terraform
Be sure you have the correct Terraform version, you can choose the binary here:
- https://releases.hashicorp.com/terraform/

## File structure
The project has the following folders and files:

- /: root folder
- /main.tf: main file for this module, contains gcs bucket which should be created at first
- /gke.tf: gke file having 1 Master node with Node Pool min with 2 worker nodes and max to 3.
- /variables.tf: all the variables for the GKE Cluster POC with AutoScaling of Worker Nodes
- /vpc.tf: having gke network and required subnet
- /output.tf: the outputs of the module
- /terraform.tfvars: provide required variables values for peoject specific
- /README.md: this file
