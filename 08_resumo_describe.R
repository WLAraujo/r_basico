# Carregando pacotes ############################################

library(datasets)

# Instalando package manager
if (!require("pacman")) install.packages("pacman")

# Adicionando pacotes através do pacman
pacman::p_load(pacman, psych) 

# Carregando dados ################################################

head(iris)

# Pacote psych ############################################

# Obtendo informação do pacote
p_help(psych)           # Abre o help na web
p_help(psych, web = F)  # Abre o help no próprio RStudio

# Uso da função describe ###############################################

# Uso exclusivo para variáveis quantitativas

describe(iris$Sepal.Length)  # Traz informações sobre uma variável quantitativa
describe(iris)               # Traz informações de todo o dataframe

# Limpeza #################################################

# Limpeza do ambiente
rm(list = ls()) 

# Limpeza de pacotes
p_unload(all)  # Remove all add-ons
detach("package:datasets", unload = TRUE)   # For base

# Limpar o console
cat("\014")  # ctrl+L
