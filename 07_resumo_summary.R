# Carregando pacotes ############################################

library(datasets)

# Carregando dados ################################################

head(iris)

# Uso da função summary para obter um resumo estatístico ################################################

summary(iris$Species)       # Variável categórica apresenta frequências
summary(iris$Sepal.Length)  # Variável quantitativa apresenta valores importantes
summary(iris)               # Apresenta informações sobre todo o dataset

# Limpeza #################################################

# Limpeza de pacotes
detach("package:datasets", unload = TRUE)

# Limpar o console
cat("\014")  # ctrl+L
