resource "null_resource" "example_resource" {
    provisioner "local-exec" {
        command = "echo 'TEST' > test.txt"
    }
}

resource "null_resource" "example_resource" {
    provisioner "local-exec" {
        when = destroy
        command = "echo 'DESTROY TEST' > test.txt"
    }
}