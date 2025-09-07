For any resource we creating please refer the official documnetation https://registry.terraform.io/providers/hashicorp/google/latest

- providers

  <img width="480" height="292" alt="image" src="https://github.com/user-attachments/assets/754270b6-72a1-4d78-8cef-6508525c2879" />

  required_providers defines which provider plugins Terraform must install before running anything.
  Version = ">= 5.0"`

  This means: "Use Google provider version 5.0 or newer, but not breaking changes beyond major version 6."

  Terraform will download and lock that version in .terraform.lock.hcl so runs are reproducible

  When Terraform init run
  
  <img width="621" height="283" alt="image" src="https://github.com/user-attachments/assets/19187a09-5c03-4897-ad66-ef37c2c96eea" />
  
  It goes to the Terraform Registry (like an app store for providers).

  Downloads the correct Google Cloud provider plugin (terraform-provider-google).

  Stores it inside your project’s hidden folder:

  ** .terraform/providers/registry.terraform.io/hashicorp/google/5.x.x/<os_arch>/terraform-provider-google_vX.X.X**
  
  <img width="470" height="89" alt="image" src="https://github.com/user-attachments/assets/8647b792-3f7e-4ad1-81e6-6a8240401b1d" />

  ---------------------------------------------------------------------------------------------------------------------------------------------------


  - **Firewall**


  
