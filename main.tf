resource "local_file" "abc" {
  for_each = {
    a = "content a"
    c = "content c"
  }
  content = each.value
  filename = "${path.module}/${each.key}.txt"
}