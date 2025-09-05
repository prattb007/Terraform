For any resource we creating please refer the official documnetation

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
  <img width="506" height="194" alt="image" src="https://github.com/user-attachments/assets/9c3db900-0ad9-4223-99f5-8a173c231089" />

  
