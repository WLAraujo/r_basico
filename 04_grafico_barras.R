# Carregando pacote de datasets ###################################

library(datasets)

# Carregando um dos datasets ################################################

?mtcars # Descri��o do dataset
head(mtcars) # Primeiras linhas do dataset

# Gr�fico de barras ###############################################

barplot(mtcars$cyl)             # Cria uma coluna para cada linha

# � necess�ria uma tabela de frequ�ncias para cada categorai
cylinders <- table(mtcars$cyl)  # Cria tabela de frequ�ncias para cada categoria
barplot(cylinders)              # Plot do gr�fico de barras
plot(cylinders)                 # Plot de um gr�fico que n�o � de barras

# Limpeza #################################################

# limpar ambiente
rm(list = ls()) 

# Limpar plots
dev.off()

# Limpar console
cat("\014")
