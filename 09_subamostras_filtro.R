# Instalação e carregamento dos pacotes ################################

library(datasets)

# Carregamento dos dados ################################################

head(iris)

# Visualizações sobre todos os dados #################################################

hist(iris$Petal.Length)
summary(iris$Petal.Length)
summary(iris$Species)

# Fazendo filtro por categoria #######################################

# Histograma só sobre a espécie versicolor
hist(iris$Petal.Length[iris$Species == "versicolor"],
     main = "Petal Length: Versicolor")

# Histograma só sobre a espécie versicolor
hist(iris$Petal.Length[iris$Species == "virginica"],
     main = "Petal Length: Virginica")

# Histograma só sobre a espécie versicolor
hist(iris$Petal.Length[iris$Species == "setosa"],
     main = "Petal Length: Setosa")

# Fazendo filtro por valores ##########################################

# Histograma de flores com pétalas curtas
hist(iris$Petal.Length[iris$Petal.Length < 2],
     main = "Petal Length < 2")

# Vários filtros de uma vez #######################################

# Mostrando apenas espécie virginica com pétalas maiores que 5.5
hist(iris$Petal.Length[iris$Species == "virginica" & 
                         iris$Petal.Length < 5.5],
     main = "Petal Length: Short Virginica")

# Criando subamostra #########################################

# Criando subamostra somente com linhas da espécie setosa
i.setosa <- iris[iris$Species == "setosa", ]

# Explorando subamostra criada ########################################
head(i.setosa)
summary(i.setosa$Petal.Length)
hist(i.setosa$Petal.Length)

# Limpeza #################################################

# Ambiente
rm(list = ls()) 

# Pacotes
detach("package:datasets", unload = TRUE)  # For base

# Plots
dev.off()  # But only if there IS a plot

# Console
cat("\014")  # ctrl+L
