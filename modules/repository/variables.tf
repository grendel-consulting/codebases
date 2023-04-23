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
