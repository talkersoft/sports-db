# sports-db
 
## Install .net core 3.0 sdk
https://dotnet.microsoft.com/download/dotnet-core/3.0

## Create Database 
from the Database Directory
dotnet run

## Add new dbup sql script
1. createDbScript.sh $ScriptName
2. Add reference to the script through SportDatabase.csproj

## Docker Scripts
- pg-up.sh - bring up docker container with persistant database
- pg-down.sh - bring down the container, retaining persisted data on your local drive
- pg-wipe.sh - bring down and remove the container, wipe all persisted data on your local drive

## Docker Installation
https://docs.docker.com/engine/install/