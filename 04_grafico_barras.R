# Carregando pacote de datasets ###################################

library(datasets)

# Carregando um dos datasets ################################################

?mtcars # Descrição do dataset
head(mtcars) # Primeiras linhas do dataset

# Gráfico de barras ###############################################

barplot(mtcars$cyl)             # Cria uma coluna para cada linha

# É necessária uma tabela de frequências para cada categorai
cylinders <- table(mtcars$cyl)  # Cria tabela de frequências para cada categoria
barplot(cylinders)              # Plot do gráfico de barras
plot(cylinders)                 # Plot de um gráfico que não é de barras

# Limpeza #################################################

# limpar ambiente
rm(list = ls()) 

# Limpar plots
dev.off()

# Limpar console
cat("\014")
