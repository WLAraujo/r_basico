# Carregando pacotes ############################################

library(datasets)

# Carregando dados ################################################

head(iris)

# Uso da fun��o summary para obter um resumo estat�stico ################################################

summary(iris$Species)       # Vari�vel categ�rica apresenta frequ�ncias
summary(iris$Sepal.Length)  # Vari�vel quantitativa apresenta valores importantes
summary(iris)               # Apresenta informa��es sobre todo o dataset

# Limpeza #################################################

# Limpeza de pacotes
detach("package:datasets", unload = TRUE)

# Limpar o console
cat("\014")  # ctrl+L
