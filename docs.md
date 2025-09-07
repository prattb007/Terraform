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

  🔹 Ingress (Incoming traffic)

  Definition: Controls traffic coming into your VM from outside sources (internet, other networks, or even within the same VPC).

Think of it as: "What traffic am I allowing into my server?"

Examples:

Allowing port 22 (SSH) so admins can log in.

Allowing port 80 (HTTP) or 443 (HTTPS) so users can access your web application.

Restricting traffic so only certain IP ranges (like your office IP) can connect.

📌 Without ingress rules → your VM would be isolated and unreachable.

<img width="670" height="319" alt="image" src="https://github.com/user-attachments/assets/6b52c045-5ba1-4662-8f93-09e8f5241f5d" />


🔹 Egress (Outgoing traffic)

Definition: Controls traffic going out of your VM to the internet or other networks.

Think of it as: "Where can my server talk to?"

Examples:

Allowing your VM to connect to external package repositories (apt, yum, npm).

Allowing an app server to talk to a database in another subnet.

Restricting egress so the VM can only communicate inside your private VPC (common in security-sensitive setups).

📌 Without egress rules → your VM might not be able to fetch updates, call APIs, or send logs.

<img width="682" height="278" alt="image" src="https://github.com/user-attachments/assets/a90e4249-9987-4471-8a9c-a5d30b289759" />



  
