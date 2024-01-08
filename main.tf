variable "my_var" {
  default = "Hello World"
}

resource "local_file" "abc" {
  content = var.my_var
  filename = "${path.module}/abc.txt"
}