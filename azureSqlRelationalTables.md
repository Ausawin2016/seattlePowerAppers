---
format: .mp4
platform: YouTube
video URL: 
duration: 
created: Thu Jul 25 21:51:47 PDT 2019
uploaded: 
last updated: 
category: azure_sql
tags: sysadmin, devops, sql, database, powerapps, azure, vs_code, cloud, ubuntu, mssql
---

# Create Relational Tables in Azure SQL Database

## Prerequisites

##### Cloud

- Azure SQL server, database and contained database user

##### Client

- Linux OS with `sudo` privs
- [VS Code](https://code.visualstudio.com/Download)
    - Used to edit the deployment (`bash`) script
- [VS Code MSSQL Extension](https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-develop-use-vscode?view=sql-server-2017)
    - Used to execute SQL commands and create tables

##### Optional

- [VS Code ERD Preview Extension](https://marketplace.visualstudio.com/items?itemName=kaishuu0123.vscode-erd-preview#overview)
    - Used to visualize table relationships

##### Resources

- [Structured learning: Khan Academy Intro to SQL](https://www.khanacademy.org/computing/computer-programming/sql)
- [Sample SQL table creation scripts]()
- [YouTube walkthrough]()

### Instructions

1. Spend some time thinking about
    1. How tables will relate/key off of one another?
    1. What are the [datatypes](https://docs.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-2017) involved?
    2. How will the data change and grow over time?
1. Map out table relationships and the schema using your tool of choice (I like `ERD Preview`)
    1. Include primary, foreign key definitions and data types for reference
1. Open VS Code
1. Create a new file with `.sql` extension
1. Create a connection to your database
    1. Click F1
    1. Type `MSSQL` and select `MSSQL: Connect`
    1. Choose the correct database connection
1. Type `sqlcreatetable` and select the intellisense option
1. The MSSQL extension will display a new table template, ready for your table values
    1. ![](../2019-07-27-08-11-44.png)
1. Enter the table name (I like to use camelCase) and click TAB
1. Enter the schema name 