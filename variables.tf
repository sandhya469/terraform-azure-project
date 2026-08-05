variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "apim_subnet" {
  type = string
}

variable "appservice_subnet" {
  type = string
}

variable "sql_subnet" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "keyvault_name" {
  type = string
}

variable "sql_server_name" {
  type = string
}

variable "sql_admin" {
  type = string
}

variable "sql_password" {
  type = string
}

variable "database_name" {
  type = string
}

variable "appserviceplan_name" {
  type = string
}

variable "appservice_name" {
  type = string
}