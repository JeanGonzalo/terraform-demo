# la configuracion del backend, se carga al principio, por lo que no podemos usar variables
# recupera el state
terraform {
  backend "s3" {
      region = "us-east-1"
      bucket = "hashitalks2021-rm-terraform-backend"
      key = "state.tfstate"
      encrypt = true    #AES-256 encryption
  }
}