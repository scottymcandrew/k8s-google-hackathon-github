// PROJECT Variables
variable "my_gcp_project" {
}

variable "region" {
  #default = "europe-west2"
}

variable "zone" {
  #default = "europe-west2-a"
}

#variable "credentials_file_path" {
#  description = "Path to the JSON file used to describe your account credentials"
#}

variable "gce_ssh_user" {
  # Set value in environment variable TF_VAR_gce_ssh_user
  description = " ssh user that is used in the public key"
}

variable "gce_ssh_pub_key" {
  # Set value in environment variable TF_VAR_gce_ssh_pub_key
  description = " ssh key in the format:  ssh-rsa <key> username "
}

//The rest of the variables do not need to be modified for the K8s Lab
// VM-Series Firewall Variables 

variable "firewall_name" {
  default = "firewall"
}

variable "image_fw" {
  #default = "https://www.googleapis.com/compute/v1/projects/paloaltonetworksgcp-public/global/images/vmseries-bundle1-810"
  #default = "https://www.googleapis.com/compute/v1/projects/paloaltonetworksgcp-public/global/images/vmseries-bundle2-901"
  default = "https://www.googleapis.com/compute/v1/projects/paloaltonetworksgcp-public/global/images/vmseries-byol-901"
}

variable "machine_type_fw" {
  default = "n1-standard-4"
}

variable "bootstrap_bucket_fw" {
  default = "gcp-2018-djs"
  #default = "hack-alto-thon-gcp-k8s-fw-bucket"
}

variable "interface_0_name" {
  default = "management"
}

variable "interface_1_name" {
  default = "untrust"
}

variable "interface_2_name" {
  default = "trust"
}

variable "scopes_fw" {
  default = [
    "https://www.googleapis.com/auth/cloud.useraccounts.readonly",
    "https://www.googleapis.com/auth/devstorage.read_only",
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/monitoring.write",
  ]
}

