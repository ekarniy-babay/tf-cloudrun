# variable "GOOGLE_CREDENTIALS" {
#   description = "Needs to be present to suppress TF warning of unused vars"
# }

variable "app_version" {
  description = "Version to deploy"
  default     = "latest"
}

# define project ID
variable "project_id" {
    type        = string
    description = "Target project_ID"
    default     = ""
}

# define environment type: dev/test/stage/prod
variable "app_env" {
    type        = string
    description = "Environment type"
    default = "dev"
}

# define autentication key
variable "gcp_auth_file" {
    type        = string
    description = "Authentication file"    
    default     = "key.json"
}

# define GCP Region
variable "gcp_region_1" {
    type        = string
    description = "Default region"
    default     = "us-central1"
}

# define GCP zone
variable "gcp_zone_1" {
    type        = string    
    description = "GCP zone"
    default     = "us-central1-c"
}

