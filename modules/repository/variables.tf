variable "name" {
  type        = string
  description = "Name of the GitHub repo being created"
}

variable "tagline" {
  type        = string
  description = "Descrption of the GitHub repo being created"
}

variable "topics" {
  type        = list(string)
  description = "Topics related to the GitHub repo being created"
  default     = []
}

variable "visibility" {
  type        = string
  description = "Visibility of the GitHub repo being created"
  default     = "public"
}

variable "homepage" {
  type        = string
  description = "Homepage of the GitHub repo being created"
  default     = null
}

variable "discussions" {
  type        = bool
  description = "Whether or not to enable GitHub discussions"
  default     = false
}

variable "pages" {
  type        = bool
  description = "Whether or not to enable GitHub pages"
  default     = false
}

variable "archived" {
  type        = bool
  description = "Whether or not to archive the GitHub repo"
  default     = false
}
