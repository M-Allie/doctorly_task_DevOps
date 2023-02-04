resource "digitalocean_droplet" "www-1" {
  image = "ubuntu-20-04-x64"
  name = "ansible"
  region = "sfo3"
  size = "s-1vcpu-1gb"
  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]
  
  connection {
    host = self.ipv4_address
    user = "root"
    type = "ssh"
    private_key = file(var.pvt_key)
    timeout = "2m"
  }
  
  provisioner "remote-exec" {
    inline = [
      "export PATH=$PATH:/usr/bin",
      # install ansible
      "sudo apt-add-repository ppa:ansible/ansible",
      "sudo apt update",
      "sudo apt install -y ansible",
      "echo 'doctorly_target01 ansible_host=143.110.230.82' >> /etc/ansible/hosts"
    ]
  }
}
