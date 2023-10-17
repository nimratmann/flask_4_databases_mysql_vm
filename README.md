# flask_4_databases_mysql_vm
Manually setting up and running a database on a cloud VM.

## MySQL Instance on Azure VM
1. Create an Azure virtual machine and add MySQL port 3306 in the networking settings.
2. Access the Ubuntu server on the VM using SSH: ssh <username>@<IP address>.
3. Update the server with sudo apt-get update and install MySQL with sudo apt install mysql-client mysql-server.
4. Log into MySQL with sudo mysql and create a new user: CREATE USER '<user>'@'%' IDENTIFIED BY '<password>'.
5. Confirm user creation with SELECT user FROM mysql.user;.
6. Grant privileges to the new user: GRANT ALL PRIVILEGES ON *.* TO '<user>'@'%' WITH GRANT OPTION.

## To configure MySQL Workbench for external connections in the Google Shell environment:
1. Ensure you are in the Ubuntu environment, not the MySQL environment.
2. Use the terminal to access the MySQL configuration file with the command: sudo nano /etc/mysql/mysql.conf.d/mysqld.conf.
3. Within the configuration file, locate bind-address and mysqlx-bind-address, and change their values to 0.0.0.0.
4. Restart MySQL to apply the changes: sudo /etc/init.d/mysql restart.
5. In MySQL Workbench, create a new connection. In the setup window, specify:
      - Hostname: The VM's IP address.
      - Username: The username of the new MySQL user.
      - Password: The associated password.
6. Click "OK" to establish the new connection.

## DB Schema
1. Within my "healthcare" database, I first created two tables: "providers" and "patients."
   - The "providers" table stores information about doctors, including their unique provider ID, first name, last name, specialty, and phone number.
   - The "patients" table is for patient data and includes a patient ID (unique), first name, last name, date of birth, and a reference to their primary doctor through "primary_provider_id." This reference links to the
     "provider_id" in the "providers" table, creating a connection between patients and their doctors.
2. Then I added an "appointments" table for managing patient appointments. It includes fields for appointment ID, date, and references to the provider and patient. The references link back to the "provider_id" in the "providers" table and the "patient_id" in the "patients" table, enabling the tracking of appointments between patients and their doctors.
3. Sample data was added to the tables using INSERT INTO.

This structure establishes a relationship where a doctor in the "providers" table can be connected to multiple patients, creating a one-to-many relationship between doctors and patients.
