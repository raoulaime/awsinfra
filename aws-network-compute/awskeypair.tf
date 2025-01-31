resource "tls_private_key" "tls_private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "key_pair" {
  key_name   = "terraform-key"
  public_key = tls_private_key.tls_private_key.public_key_openssh
}

resource "local_file" "ssh_key" {
  filename = "./private-key/${aws_key_pair.key_pair.key_name}.pem"
  content  = tls_private_key.tls_private_key.private_key_pem

  provisioner "local-exec" {
    command = "chmod 400 './private-key/${aws_key_pair.key_pair.key_name}.pem'"
  }

  lifecycle {
    prevent_destroy = false
  }
}