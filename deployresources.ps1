Login-AzureRmAccount

Select-AzureRmSubscription -SubscriptionName "ACN CIO Cloud Lab"

New-AzureRmResourceGroup -Name "bobroud-appgw3" -Location "East US"
New-AzureRmResourceGroupDeployment -Mode Incremental -Name AppGWDeployment -ResourceGroupName bobroud-appgw3 -TemplateFile .\azuredeploy.json -TemplateParameterFile .\azuredeploy.parameters.json
