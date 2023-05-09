variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}

variable "zone" {
  description = "zone"
}

variable "ip_cidr_range" {
  description = "CIDR Range"
}

variable "machine_type" {
  description = "Specify the required machine type"
}

variable "disk_size_gb" {
  type = number
  description = "Provide disk size"
}

variable "min_node_count" {
  type        = number
  description = "GKE minimum worker node count"
}
variable "max_node_count" { 
  type        = number
  description = "Gke maximum worker node count"
}

variable "gke_version" { 
  description = "K8S cluster version"
}
