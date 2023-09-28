terraform {
   backend "remote" {
     organization = "Korbo" # replace with your terraform cloud account org
     workspaces {
       name = "<%= expansion(':MOD_NAME') %>"
     }
   }
}