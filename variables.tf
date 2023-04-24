variable "name" {
  description = "The name of the node pool for the AKS cluster"
  type        = string
}

variable "kubernetes_cluster_id" {
    type = string
    description = "The id of aks cluster"
}

variable "vm_size" {
  type        = string
  description = "VM Size of node pool."
}

variable "subnet_id" {
  description = "The ID of a Subnet"
  type        = string
}

variable "os_disk_size_gb" {
  description = "Disk size of nodes in GBs."
  type        = number
}

variable "vnet_subnet_id" {
  type        = string
  description = "A list of Availability Zones across which the Node Pool should be spread."
}
variable "zones" {
  type        = list(string)
  description = "A list of Availability Zones across which the Node Pool should be spread."
}

variable "secondary_max_pods" {
  type        = number
  description = "Maximum number of pods in a nodes"
  default     = 30
}
variable "os_sku" {
  type        = string
  description = "disk type in a nodes"
  default     = "Ubuntu"
}

variable "secondary_node_count" {
  type        = number
  description = "The number of node to be run in node pool"
}

variable "secondary_min_count" {
  type        = number
  description = "Minimum number of nodes in a pool"
}

variable "secondary_max_count" {
  type        = number
  description = "Maximum number of nodes in a pool"
}
 variable "priority" {
   description = "The Priority for Virtual Machines within the Virtual Machine Scale Set that powers this Node Pool. Possible values are Regular and Spot. Defaults to Regular. Changing this forces a new resource to be created."
   default = "Regular"
   type = string
 }
variable "node_taints" {
  description = "A list of Kubernetes taints which should be applied to nodes in the agent pool (e.g key=value:NoSchedule). Changing this forces a new resource to be created"
  default = []
  type = list
}
variable "node_labels" {
  description = "A map of Kubernetes labels which should be applied to nodes in this Node Pool."
  type = map
  default = {}
}