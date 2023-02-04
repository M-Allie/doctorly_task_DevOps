Create Ansible playbooks and roles to create locally or remotely a docker stack using docker-compose that runs a .net core application and a database (Postgresql or MySQL)


    I created two ubuntu servers in Digital Ocean. I then  installed Ansible on my "server" and added my "client" ip to /etc/ansible/hosts .
    Next I tested that the server can access the "client":

        $ ansible all -m ping -u root --private-key /root/.ssh/alliekey
            doctorly_target01 | SUCCESS => {
                "changed": false,
                "ping": "pong"
            }
    
    I then created two playbooks with the intent of being able to reuse them individually as needed and limit the scope of potential errors.

        task1\ansible\docker_install.yml
        task1\ansible\docker_core_and_mysql.yml

    For testing I created a docker-compose file to isolate issues.

        task1\docker\dotnetCore&mySQL.yml

    I then ran the playbooks with:

        ansible-playbook docker_install.yml -u root

    I didn't create roles due to time constraints.


    Reference docs:

        https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-20-04
        https://www.digitalocean.com/community/tutorials/how-to-use-ansible-to-install-and-set-up-docker-on-ubuntu-20-04
        https://www.digitalocean.com/community/tutorials/how-to-use-ansible-roles-to-abstract-your-infrastructure-environment
        https://www.digitalocean.com/community/tutorials/configuration-management-101-writing-ansible-playbooks#example-playbook
        https://hub.docker.com/_/mysql
        https://hub.docker.com/_/microsoft-dotnet-samples
        https://abayard.com/from-docker-to-ansible/