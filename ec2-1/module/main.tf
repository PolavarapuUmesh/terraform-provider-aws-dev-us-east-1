resource "aws_instance" "dev"{
    ami = var.ami_value
    instance_type = var.instance_type
    availability_zone = var.availability_zone_type
    vpc_security_group_ids = [var.security_group_id]
    key_name = "server"


    user_data = <<-EOF
    #!/bin/bash
    # Update the package repository
    sudo apt-get update -y

    # Install necessary packages for Docker installation
    sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

    # Add Docker's official GPG key
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

    # Add Docker's official APT repository
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

    # Update the package repository again
    sudo apt-get update -y

    # Install Docker
    sudo apt-get install -y docker-ce

    # Start the Docker service
    sudo systemctl start docker

    # Enable Docker to start on boot
    sudo systemctl enable docker

    # Add the ubuntu user to the docker group to run Docker commands without sudo
    sudo usermod -aG docker ubuntu

    docker pull nginx:latest
    docker run -it -d --name terraform-user -p 80:80 nginx:latest
EOF
}
