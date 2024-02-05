build {
	sources = ["source.arm.ubuntu_rpi"]

	provisioner "file" {
		sources = var.cloud_init_include_files
		destination = "/boot/firmware/"
	}

	provisioner "shell" {
		inline = [
			"mv /etc/resolv.conf /etc/resolv.conf.bk",
			"echo 'nameserver 8.8.8.8 8.8.4.4' > /etc/resolv.conf"
		]
	}
}
