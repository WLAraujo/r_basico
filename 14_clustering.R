# Aqui vamos realizar um clustering hierarquizado de dados com um dataset exemplo

# Instalar e carregar pacotes ################################

library(datasets)

# Intala o pacman se necessário
if (!require("pacman")) install.packages("pacman")

# Usar pacman para carregar os pacotes
pacman::p_load(pacman, tidyverse) 

# Carregando os dados ################################################

?mtcars # Documentação dos dados
head(mtcars) # Primeiras linhas
cars <- mtcars[, c(1:4, 6:7, 9:11)]  # Selecionando apenas algumas colunas
head(cars)

# Calculando e plotando os clusters ################################

# Realizando cluster hierarquico
hc <- cars   %>%  # Usando dados da variável cars
      dist   %>%  # Compute a matriz de distâncias/dissimilaridades
      hclust      # Compute o cluster hierarquico
plot(hc)          # Plotando os clusters, veja que cada nível indica a quantidade de clusters

# Adicionando caixas de clusters nos plots ########################################
rect.hclust(hc, k = 2, border = "gray") # Caso tenhamos dois clusters
rect.hclust(hc, k = 3, border = "blue") # Caso tenhamos três clusters
rect.hclust(hc, k = 4, border = "green4") # Caso tenhamos quatro clusters
rect.hclust(hc, k = 5, border = "darkred") # Caso tenhamos cinco clusters

# Limpeza #################################################

# Ambiente
rm(list = ls()) 

# Pacotes
p_unload(all)  # Remove all add-ons
detach("package:datasets", unload = TRUE)  # For base

# Plots
dev.off()  # But only if there IS a plot

# Console
cat("\014")  # ctrl+L