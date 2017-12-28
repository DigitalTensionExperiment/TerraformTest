//resource "aws_key_pair" "key" {
//  key_name = "key"
//  public_key = "${file("${var.PATH_TO_PUBLIC_KEY}")}"
//}

resource "aws_instance" "testbox0" {
  ami = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"

//  key_name = "${aws_key_pair.key.key_name}"
//  provisioner "file" {
//    source = "script.sh"
//    destination = "/tmp/script.sh"
//  }
//  provisioner "remote-exec" {
//    inline = [
//      "chmod +x /tmp/script.sh",
//      "sudo /tmp/script.sh"
//    ]
//  }
//  connection {
//    user = "${var.INSTANCE_USERNAME}"
//    private_key = "${file("${var.PATH_TO_PRIVATE_KEY}")}"
//  }

  provisioner "local-exec" {
    command = "echo ${aws_instance.testbox0.private_ip} >> private_ips.txt"
  }

}

output "ip" {
  value = "${aws_instance.testbox0.public_ip}"
}

