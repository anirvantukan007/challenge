variable "location" {
    type = string
    default = "West US"
}

variable "tags" {
    type = map(string)
}

variable "env" {
    type = string
}

variable "project" {
    type = string
}