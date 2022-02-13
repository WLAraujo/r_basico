# Carregando pacotes ############################################

library(datasets)

# Carregando dados ################################################

?mtcars # Informações dos dados
head(mtcars) # Primeiras linhas da tabela

# Plots ####################################################

# Checando distribuições de duas variáveis que queremos checar se tem relação
hist(mtcars$wt)
hist(mtcars$mpg)

# Plot através de gráfico de dispersão das duas variáveis
plot(mtcars$wt, mtcars$mpg) # Já é possível ver uma relação de maneira mais clara

# Personalizando um pouco a visualização
plot(mtcars$wt, mtcars$mpg,
     pch = 19,         # Solid circle
     cex = 1.5,        # Make 150% size
     col = "#cc0000",  # Red
     main = "MPG as a Function of Weight of Cars",
     xlab = "Weight (in 1000 pounds)",
     ylab = "MPG")

# Limpeza #################################################

# Limpeza de pacotes
detach("package:datasets", unload = TRUE)

# Limpeza dos plots
dev.off()  # But only if there IS a plot

# Limpar o console
cat("\014")  # ctrl+L
