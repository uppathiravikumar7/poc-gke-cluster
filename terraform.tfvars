#Terraform variable values as per Environment
project_id      = "tranquil-racer-379907"
region          = "us-central1"
zone            = "us-central1-f"
#Subnet for gke
ip_cidr_range   = "10.10.0.0/24"
machine_type    = "e2-medium"
#worker node size
disk_size_gb    = 20
# Autoscaling min & max worker nodes
min_node_count  = 2
max_node_count  = 3
#reguired gke_version
gke_version     = "1.25.7"
