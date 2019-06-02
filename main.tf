provider "aws" {
    region              = "us-east-1" 
}

resource "aws_secretsmanager_secret" "secret" {
  description           = "${var.secret_description}"
  kms_key_id            = "${var.kms_key_id}"
  name                  = "${var.name}"
}

resource "aws_secretsmanager_secret_version" "secret" {
  lifecycle {
    ignore_changes = [
      "secret_string"
    ]
  }
  secret_id             = "${aws_secretsmanager_secret.secret.id}"
  secret_string         = <<EOF
{
  "username": "${var.username}",
  "password": "${var.password}"
}
EOF
}
