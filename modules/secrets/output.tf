output "secret_id"     {
  value = "${aws_secretsmanager_secret.secret.id}"  
}

output "key_values" {
  value = "${aws_secretsmanager_secret_version.key_values.secret_string}"
}
