# Challenge
This is a test repository that describe terraform setup for azure resource deployment

## Getting Started
This part will describe how to run the pipeline in GitHub.

1. Go to the Actions tab and select Terraform under All Workflows.
2. Click on Run workflow.
3. Select the Branch
4. Select deployment environment (test/prd)
5. To run the plan only keep "Deploy planned resources" as false.
6. To deploy the resources keep "Deploy planned resources" as true.
7. To completely remove the resources from Azure portal, make "Deploy planned resources" and "Destroy planned resources" as true.

## Contact
For more details please contact me at anirvantukan007@gmail.com to acctually see the deployments in Azure portal

### Note
The pipelines will fail while running to avoid deployments of azure resources. Please contact me for demo.