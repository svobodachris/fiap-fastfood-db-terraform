variable "usuario_banco" {
  description = "Usuário do Banco de Dados"
  type        = string
  sensitive   = true
}

variable "senha_banco" {
  description = "Senha do Banco de Dados"
  type        = string
  sensitive   = true
}
