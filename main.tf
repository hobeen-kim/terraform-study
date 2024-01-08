variable "prefix" {
  default = "hello"
}

locals {
  name = "terraform"
  content = "${var.prefix} ${local.name}"
  my_info = {
    age = 20
    region = "KR"
  }
  my_nums = [1, 2, 3, 4, 5]
}

locals {
  content = "content2" # local 변수는 중복 선언이 불가능하다.
}