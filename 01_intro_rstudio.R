# Carregando os dados ################################################

library(datasets)  # Carregando datasets padrão

# Mostrando algumas informações ###########################################

head(iris)         # Primeiras seis linhas desse dataset
summary(iris)      # REsumo estatístico do dataset
plot(iris)         # Scatterplot do dataset

# Limpeza do ambiente #################################################

# Limpeza dos pacotes
detach("package:datasets", unload = TRUE) 

# Limpeza dos plots
dev.off()

# Limpeza do cosole que também pode ser feita com ctrl+L
cat("\014") 
