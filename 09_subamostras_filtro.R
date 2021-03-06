# Instala��o e carregamento dos pacotes ################################

library(datasets)

# Carregamento dos dados ################################################

head(iris)

# Visualiza��es sobre todos os dados #################################################

hist(iris$Petal.Length)
summary(iris$Petal.Length)
summary(iris$Species)

# Fazendo filtro por categoria #######################################

# Histograma s� sobre a esp�cie versicolor
hist(iris$Petal.Length[iris$Species == "versicolor"],
     main = "Petal Length: Versicolor")

# Histograma s� sobre a esp�cie versicolor
hist(iris$Petal.Length[iris$Species == "virginica"],
     main = "Petal Length: Virginica")

# Histograma s� sobre a esp�cie versicolor
hist(iris$Petal.Length[iris$Species == "setosa"],
     main = "Petal Length: Setosa")

# Fazendo filtro por valores ##########################################

# Histograma de flores com p�talas curtas
hist(iris$Petal.Length[iris$Petal.Length < 2],
     main = "Petal Length < 2")

# V�rios filtros de uma vez #######################################

# Mostrando apenas esp�cie virginica com p�talas maiores que 5.5
hist(iris$Petal.Length[iris$Species == "virginica" & 
                         iris$Petal.Length < 5.5],
     main = "Petal Length: Short Virginica")

# Criando subamostra #########################################

# Criando subamostra somente com linhas da esp�cie setosa
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
