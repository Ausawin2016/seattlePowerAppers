#!/bin/bash

# Source:https://docs.microsoft.com/en-us/azure/sql-database/scripts/sql-database-create-and-configure-database-cli?toc=%2fcli%2fazure%2ftoc.json
# Install Azure CLI: https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-apt?view=azure-cli-latest
# Login to Azure CLI using `az login`
# Enter variables below. Examples shown in comments "< >".
# Change script file to executable. 
# Run (on Linux) with ./createAzureServer-DB.sh > serverSetup.txt
# See video tutorial here: 

# Set Azure location <westus>
export azureLocation=

# Set Azure resource group name <rgwhatever-$RANDOM>
export resourceGroup=

# Set SQL server name <srvwhatever-$RANDOM>
export serverName=

# Set SQL server admin login and password
export adminUserName=
export adminPassword=

# IP address range to whitelist for SQL Server access <curl ifconfig.me>
export startIp=
export endIp=

# Set SQL database name <dbwhatever-$RANDOM>
export databaseName=

# Create a resource group
az group create \
	--name $resourceGroup \
	--location $azureLocation

# Create a logical server in the resource group
az sql server create \
	--name $serverName \
	--resource-group $resourceGroup \
	--location $azureLocation  \
	--admin-user $adminUserName \
	--admin-password $adminPassword

# Configure a SQL Server firewall rule to allow this IP access
az sql server firewall-rule create \
	--resource-group $resourceGroup \
	--server $serverName \
	-n initialSetupIP \
	--start-ip-address $startIp \
	--end-ip-address $endIp

# Create a SQL database
az sql db create \
	--resource-group $resourceGroup \
	--server $serverName \
	--name $databaseName \
# See https://docs.microsoft.com/en-us/azure/sql-database/sql-database-dtu-resource-limits-single-databases#standard-service-tier for pricing
	--service-objective Basic