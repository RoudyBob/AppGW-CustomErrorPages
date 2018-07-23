Connect-AzureRmAccount

Select-AzureRmSubscription -SubscriptionName "ACN CIO Cloud Lab"

New-AzureRmResourceGroup -Name "bobroud-appgw1" -Location "East US"
New-AzureRmResourceGroupDeployment -Mode Incremental -Name AppGWDeployment -ResourceGroupName bobroud-AppGW1 -TemplateFile .\azuredeploy.json -TemplateParameterFile .\azuredeploy.parameters.json
