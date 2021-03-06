# Carregando pacotes ############################################

library(datasets)

# Carregando dados ################################################

?iris # Informar��es do dataset
head(iris) # Primeiras linhas do cabe�alho

# Histogramas b�sicos de algumas colunas #########################################

hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

# Histogramas com agrupamento  #######################################

# Divide a tela de gr�ficos em tr�s linhas e uma coluna
par(mfrow = c(3, 1))

# Criando um histograma para cada esp�cie
# Veja que fazemos uma sele��o de quais linhas queremos considerar no plot atrav�s de uma condicional
hist(iris$Petal.Width [iris$Species == "setosa"],
     xlim = c(0, 0.5),
     breaks = 9,
     main = "Petal Width for Setosa",
     xlab = "",
     col = "red")
hist(iris$Petal.Width [iris$Species == "versicolor"],
     xlim = c(0, 3),
     breaks = 9,
     main = "Petal Width for Versicolor",
     xlab = "",
     col = "purple")
hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim = c(0, 3),
     breaks = 9,
     main = "Petal Width for Virginica",
     xlab = "",
     col = "blue")

# Redefinindo para o padr�o
par(mfrow=c(1, 1))

# Limpeza #################################################

# Limpeza de pacotes
detach("package:datasets", unload = TRUE)  # For base

# Limpeza dos plots
dev.off()  # But only if there IS a plot

# Limpar o console
cat("\014")  # ctrl+L