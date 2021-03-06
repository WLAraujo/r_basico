# Carregando pacotes ############################################

library(datasets)

# Carregando dados ################################################

?mtcars # Informa��es dos dados
head(mtcars) # Primeiras linhas da tabela

# Plots ####################################################

# Checando distribui��es de duas vari�veis que queremos checar se tem rela��o
hist(mtcars$wt)
hist(mtcars$mpg)

# Plot atrav�s de gr�fico de dispers�o das duas vari�veis
plot(mtcars$wt, mtcars$mpg) # J� � poss�vel ver uma rela��o de maneira mais clara

# Personalizando um pouco a visualiza��o
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
