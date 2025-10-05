# Generic Variables
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment Variable used as a prefix"
  type        = string
  default     = "dev"
}

variable "business_divsion" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type        = string
  default     = "it"
}

variable "openshift_version" {
  type        = string
  default     = "4.19.3"
  description = "The required version of Red Hat OpenShift for the cluster, for example '4.1.0'. If version is greater than the currently running version, an upgrade will be scheduled."
  validation {
    condition     = can(regex("^[0-9]*[0-9]+.[0-9]*[0-9]+.[0-9]*[0-9]+$", var.openshift_version))
    error_message = "openshift_version must be with structure <major>.<minor>.<patch> (for example 4.13.6)."
  }
}

variable "cluster_name" {
  type        = string
  description = "Name of the cluster. After the creation of the resource, it is not possible to update the attribute value."
  validation {
    condition     = can(regex("^[a-zA-Z][a-zA-Z0-9-]{2,14}[a-zA-Z0-9]$", var.cluster_name))
    error_message = "cluster_name must be between 4 and 16 characters, start with a letter, end with a letter or number, and contain only letters, numbers, and hyphens."
  }
  default = "rosa-cluster"
}

variable "rhcs_token" {
  description = "Red Hat Customer Service (RHCS) token for authentication"
  type        = string
  sensitive   = true

}