# Carregando os dados ################################################

library(datasets)  # Carregando datasets padr�o

# Mostrando algumas informa��es ###########################################

head(iris)         # Primeiras seis linhas desse dataset
summary(iris)      # REsumo estat�stico do dataset
plot(iris)         # Scatterplot do dataset

# Limpeza do ambiente #################################################

# Limpeza dos pacotes
detach("package:datasets", unload = TRUE) 

# Limpeza dos plots
dev.off()

# Limpeza do cosole que tamb�m pode ser feita com ctrl+L
cat("\014") 
