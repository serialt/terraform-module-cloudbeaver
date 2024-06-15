variable "helm_repository" {
  type    = string
  default = "oci://docker.io/serialt"
}

variable "chart_version" {
  type    = string
  default = "0.1.0"
}

variable "chart_name" {
  type    = string
  default = "cloudbeaver"

}
variable "mirror" {
  type    = string
  default = "docker.io/dbeaver"
}
variable "mirror_secret" {
  type    = any
  default = []
}

variable "image" {
  type = any
  default = {
    name = "cloudbeaver"
    tag  = ""
  }

}

variable "app_version" {
  type    = string
  default = ""
}

variable "name" {
  type    = string
  default = "cloudbeaver"
}

variable "namespace" {
  type    = string
  default = ""
}



variable "resources" {
  type    = any
  default = {}
}



variable "persistence" {
  type    = any
  default = {}
}

variable "virtualService" {
  type = any
  default = {
    enabled = false
  }

}

variable "nodeSelector" {
  type    = any
  default = {}

}

variable "tolerations" {
  type    = list(any)
  default = []

}
