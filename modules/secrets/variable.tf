variable "secret_description" {
    description              = "description about the secret"         
}
variable "kms_key_name" {
    description              = "kms key that need to be attached"        
}
variable "name" {
    description              = "name of the secret"          
}
variable "key_values" {
    type                     = "map"
}


