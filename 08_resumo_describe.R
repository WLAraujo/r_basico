# Carregando pacotes ############################################

library(datasets)

# Instalando package manager
if (!require("pacman")) install.packages("pacman")

# Adicionando pacotes atrav�s do pacman
pacman::p_load(pacman, psych) 

# Carregando dados ################################################

head(iris)

# Pacote psych ############################################

# Obtendo informa��o do pacote
p_help(psych)           # Abre o help na web
p_help(psych, web = F)  # Abre o help no pr�prio RStudio

# Uso da fun��o describe ###############################################

# Uso exclusivo para vari�veis quantitativas

describe(iris$Sepal.Length)  # Traz informa��es sobre uma vari�vel quantitativa
describe(iris)               # Traz informa��es de todo o dataframe

# Limpeza #################################################

# Limpeza do ambiente
rm(list = ls()) 

# Limpeza de pacotes
p_unload(all)  # Remove all add-ons
detach("package:datasets", unload = TRUE)   # For base

# Limpar o console
cat("\014")  # ctrl+L
