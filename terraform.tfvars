project_id   = "km1-runcloud"
cluster_name = "gke-terraform-project"
region       = "europe-west2"




 node_pools = [
    {
      name                      = "default-node-pool"
      machine_type              = "e2-medium"
      node_locations            = "europe-west2-b,europe-west2-c"
      min_count                 = 1
      max_count                 = 2
      local_ssd_count           = 0
      spot                      = false
      disk_size_gb              = 100
      disk_type                 = "pd-standard"
      image_type                = "COS_CONTAINERD"
      enable_gcfs               = false
      enable_gvnic              = false
      logging_variant           = "DEFAULT"
      auto_repair               = true
      auto_upgrade              = true
      service_account           = "sricharank-google-com@km1-runcloud.iam.gserviceaccount.com"
      preemptible               = false
      initial_node_count        = 2
    },
  ]

 