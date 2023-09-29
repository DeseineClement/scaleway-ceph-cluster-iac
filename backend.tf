terraform {
   backend "remote" {
     organization = "Korbo"
     workspaces {
       prefix = "ceph_"
     }
   }
}