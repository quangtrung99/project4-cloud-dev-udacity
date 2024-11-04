resourceGroup="cloud-project4"
region="southeastasia"
myAcrName="cloudproject4acr"
clusterName="udacity-cluster"

az acr create --resource-group $resourceGroup --name $myAcrName --sku Basic
# Log in to the ACR
az acr login --name $myAcrName
# Get the ACR login server name
# To use the azure-vote-front container image with ACR, the image needs to be tagged
# with the login server address of your registry.
# Find the login server address of your registry
az acr show --name $myAcrName --query loginServer --output table
# Associate a tag to the local image
docker tag azure-vote-front:v1 $myAcrName.azurecr.io/azure-vote-front:v1
# Now you will see project4acr.azurecr.io/azure-vote-front:v1 if you run docker images
# Push the local registry to remote
docker push $myAcrName.azurecr.io/azure-vote-front:v1
# Verify if you image is up in the cloud.
az acr repository list --name $myAcrName.azurecr.io --output table