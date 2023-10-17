# flask_4_databases_mysql_vm
Manually setting up and running a database on a cloud VM.

## MySQL Instance on Azure VM
1. Create an Azure virtual machine and add MySQL port 3306 in the networking settings.
2. Access the Ubuntu server on the VM using SSH: ssh <username>@<IP address>.
3. Update the server with sudo apt-get update and install MySQL with sudo apt install mysql-client mysql-server.
4. Log into MySQL with sudo mysql and create a new user: CREATE USER '<user>'@'%' IDENTIFIED BY '<password>'.
5. Confirm user creation with SELECT user FROM mysql.user;.
6. Grant privileges to the new user: GRANT ALL PRIVILEGES ON *.* TO '<user>'@'%' WITH GRANT OPTION.
