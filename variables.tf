
variable "region" {
  default = "us-east-1"
  type    = string
}

variable "bucket_name" {
  type = list(any)
  #   default = ["operational_environment_network_tf"]

}

variable "dynamo_table" {
  default = "terraform-lock"
  type    = string
}