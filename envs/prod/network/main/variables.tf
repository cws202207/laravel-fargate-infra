variable "vpc_cidr" {
  type    = string
  default = "172.41.0.0/16"
}

variable "azs" {
  type = map(object({
    public_cidr  = string
    private_cidr = string
  }))

  default = {
    a = {
      public_cidr  = "172.41.0.0/20"
      private_cidr = "172.41.48.0/20"
    },

    c = {
      public_cidr  = "172.41.16.0/20"
      private_cidr = "172.41.64.0/20"
    }
  }
}

variable "enable_nat_gateway" {
  type    = bool
  default = true
}

variable "single_nat_gateway" {
  type    = bool
  default = true
}
