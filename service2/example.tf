variable "file_count" {
  default = 10
}

resource "local_file" "foo" {
  count    = var.file_count
  content  = "foo! by Masatomo Ito. This is file ${count.index}"
  filename = "${path.module}/foo_${count.index}.bar"
}

output "filename" {
  value = local_file.foo.*.filename
}

