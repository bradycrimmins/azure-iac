# Scalable Azure Infrastructure with Terraform

This project provides a Terraform configuration for deploying a scalable and high-availability infrastructure on Azure. It sets up a Virtual Network, VM Scale Sets for dynamic scaling of instances, and a Load Balancer to distribute incoming traffic efficiently.

## Features

- **Azure Resource Group**: Organizes all the resources in a single group for easy management and billing.
- **Virtual Network (VNet) and Subnet**: Creates a network environment where your services can securely run.
- **Azure Load Balancer**: Distributes incoming network traffic across multiple virtual machines to ensure no single VM becomes a bottleneck.
- **VM Scale Set (VMSS)**: Allows your application to automatically scale in or out to meet demand, ensuring high availability and saving costs during off-peak times.
- **Public IP Address**: Assigns a static public IP address to your Load Balancer, making your application accessible from the internet.

## Prerequisites

Before you begin, ensure you have the following:
- An Azure account with appropriate permissions to create resources.
- Terraform installed on your local machine.
- Azure CLI installed and configured with your Azure account credentials.

## Deployment Steps

1. **Clone the Repository**

   Start by cloning this repository to your local machine.

   ```bash
   git clone <repository-url>
   ```

2. **Navigate to the Project Directory**

   Change into the project directory where the Terraform configuration files are located.

   ```bash
   cd path/to/project-directory
   ```

3. **Initialize Terraform**

   Run the following command to initialize Terraform in your directory. This will download the required provider plugins.

   ```bash
   terraform init
   ```

4. **Review the Terraform Plan**

   Execute the plan command to see the resources Terraform will create/manage without making any changes to your infrastructure.

   ```bash
   terraform plan
   ```

5. **Apply the Configuration**

   Apply the Terraform configuration to start deploying the resources to Azure.

   ```bash
   terraform apply
   ```

   When prompted, confirm the action by typing `yes` to proceed.

6. **Access Your Application**

   After the deployment is complete, Terraform will output the public IP address of the Load Balancer. You can use this IP to access your application deployed within the VM Scale Sets.

## Customization

- You may need to customize the configuration to match your specific requirements, such as adjusting the VM sizes, the scaling policies, or adding additional resources like databases or storage accounts.
- Review and update the `azure_provider.tf`, `azure_main.tf`, and other Terraform files as needed.

## Cleanup

To delete the resources created by this configuration to avoid ongoing charges, run:

```bash
terraform destroy
```

Confirm the action when prompted to remove the deployed resources from your Azure account.

## Contributing

Contributions are welcome. Please fork the repository and submit a pull request with your enhancements.

## License

This project is open-source and free for personal or commercial use.
