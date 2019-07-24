---
format: .mp4
platform: YouTube
video URL: https://youtu.be/otzx-d3NhSw
duration: 31:00
created: Sat Jun 22 12:44:52 PDT 2019
uploaded: Wed Jul 24 00:12:44 PDT 2019
last updated: Wed Jul 24 00:12:55 PDT 2019
category: azure_sql
tags: sysadmin, devops, sql, database, powerapps, azure, bash, vs_code, cloud, ubuntu, mssql
---
# Quickly Deploy Azure SQL Server, Database and Contained Database User

## Prerequisites

##### Cloud

- Azure cloud used to host a managed SQL Server instance
- **Note:** There may be a nominal fee for following this tutorial

##### Client

- Linux OS with `sudo` privs
- [VS Code](https://code.visualstudio.com/Download)
    - Used to edit the deployment (`bash`) script
- [VS Code MSSQL Extension](https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-develop-use-vscode?view=sql-server-2017)
    - Used to execute SQL commands
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
    - Used to pass Azure credentials during `bash` script execution

##### Resources

- `Bash` installation script
    - [Make it executable](https://askubuntu.com/questions/229589/how-to-make-a-file-e-g-a-sh-script-executable-so-it-can-be-run-from-termina)

##### Recommended

- Password Manager:
    - [KeyPass X](https://www.keepassx.org/downloads)

### Instructions

1. Open the installation script in VS Code and customize it for your project
    a. Use a password manager to generate a sql server admin password of sufficient length
    b. Open client terminal and run `curl ifconfig.me` to determine IP address for the firewall rule field
1. Login to Azure CLI
    a. Open client terminal and run `az login`
    b. Complete web verification
1. Execute installation script
    a. `cd` to installation script directory
    b. `./<script name here>.sh > <choose a filename>.txt`
1. Verify resources have been created in [portal.azure.com](https://portal.azure.com)
1. Using VS Code, create a new file with `.sql` extension
1. Create connection to new database in VS Code (using MSSQL extension)
    a. Open VS Code
    b. `F1`, `MSSQL`, `New Connection`
    c. Copy the server name from install script output text file
    d. Copy the database name from install script output text file
    e. Copy the sql server admin credentials from password manager
    f. Complete remaining steps to complete connection
1. Create contained database user
    a. Use a password manager to generate a sql user password of sufficient length
    b. `CREATE USER <choose a user name> WITH PASSWORD = '<choose a password>'`
1. Create database role
    a. `CREATE ROLE <choose a role name>`
1. Grant Read/Write perms to database role

```sql
EXEC sp_addrolemember N'db_datareader', N'<enter role name here>'  
GO  
EXEC sp_addrolemember N'db_datawriter', N'<enter role name here>'  
GO
```

1. Add contained user to role
    1. `ALTER ROLE <enter role name here> ADD MEMBER <enter sql username here>`

### Further Research

Research the below keywords and concepts to further your Azure SQL knowledge.

- Become familiar with [Contained Database User](https://docs.microsoft.com/en-us/sql/relational-databases/security/contained-database-users-making-your-database-portable?view=sql-server-2017)
- Research how to create [Azure Active Directory-based users](https://docs.microsoft.com/en-us/azure/sql-database/sql-database-aad-authentication)
- Research how to backup and restore Azure SQL Database to Azure Storage and local `.bacpac` files

### Next Video

- Create relational SQL tables using VS Code
- Connect SQL tables to PowerApps and Flow
