variable "file_count2" {
  default = 5
}

resource "local_file" "foo2" {
  count    = var.file_count
  content  = "foo! by Masatomo Ito. This is file ${count.index}"
  filename = "${path.module}/foo2_${count.index}.bar"
}

output "filename2" {
  value = local_file.foo.*.filename
}

