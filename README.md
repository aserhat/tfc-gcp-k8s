# Terrafom Cloud Demo
A small demo using Terraform Cloud to manage remote state of a few Google Computer Engine instances.  This demo also shows off a small module with variables and outputs.

## Google Compute Engine
* Fork this repository or clone/create a new one in your source control.
* Google Cloud -> IAM -> Service accounts - create a service account with the needed rights, I gave my account Compute Admin for this demo.
* Create a key as a json file.
* Create a sensitive variable in your Terraform Workspace with the contents of the JSON file, in this demo it is called gce-creds.
* Connect your Terraform Cloud workspace to your git repository, make changes and push to git and watch Terraform build.
