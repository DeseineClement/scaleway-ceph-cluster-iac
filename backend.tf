terraform {
   backend "remote" {
     organization = "Korbo"
     workspaces {
       name = "ceph_cluster"
     }
   }
}