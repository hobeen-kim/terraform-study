
variable "names" {
  type = list(string)
  default = ["a", "b", "c"]
}
resource "local_file" "abc" {
  count    = length(var.names)
  content  = "abc"
  filename = "${path.module}/abc-${var.names[count.index]}.txt"
}

resource "local_file" "def" {
  count = length(var.names)
  content = local_file.abc[count.index].content
  filename = "${path.module}/def-${element(var.names, count.index)}.txt"
}