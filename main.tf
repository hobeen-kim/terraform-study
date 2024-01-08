variable "my_password" {
  default = "my_password"
  sensitive = true
}

resource "local_file" "abc" {
  content = var.my_password
  filename = "${path.module}/abc.txt"
}