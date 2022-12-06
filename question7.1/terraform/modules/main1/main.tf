module "main1" {    
    source = "./modules/main1/main"
    VAR2 = var.VAR2
}

module "main2" {    
    source = "./modules/main1/main"
    VAR2 = module.main2.id
}
