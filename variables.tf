variable "product" {
  type        = string
  nullable    = false
  description = "The name of the product that hosts the environment"
  default     = "point_tech"
}

variable "service" {
  type        = string
  nullable    = false
  description = "The name of the service that will be run on the environment"
  default     = "client"
}
