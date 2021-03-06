# Carregando pacote de datasets b�sicos ###################################

library(datasets)

# Mostrando dados ################################################

head(iris)

# Plotando dados com plot() ####################################

?plot  # Mostra a documenta��o de plot()

plot(iris$Species)  # Plotando vari�vel categ�rica (Colunas)
plot(iris$Petal.Length)  # Plotando vari�vel num�rica (Dispers�o)
plot(iris$Species, iris$Petal.Width)  # Fazendo cruzamento categ�rica x num�rico (Boxplot)
plot(iris$Petal.Length, iris$Petal.Width)  # Fazendo cruzamento num�rico x num�rico (Dispers�o)
plot(iris)  # Todos os cruzamentos poss�veis (Dispers�o)

# Plotar com par�metros
plot(iris$Petal.Length, iris$Petal.Width,
     col = "#cc0000",  # Cor das amostras (vermelho em hex)
     pch = 19,         # Pontos s�lidos para representar valores
     main = "Iris: Petal Length vs. Petal Width",
     xlab = "Petal Length",
     ylab = "Petal Width")

# Plotar gr�ficos com base em fun��es ################################

plot(cos, 0, 2*pi) # Cossenoide
plot(exp, 1, 5) # Exponencial
plot(dnorm, -3, +3) # Normal

# Plot de uma f�rmula com par�metros
plot(dnorm, -3, +3,
     col = "#cc0000",
     lwd = 5,
     main = "Standard Normal Distribution",
     xlab = "z-scores",
     ylab = "Density")

# Limpeza #################################################

# Limpar plots
dev.off()

# Limpar console
cat("\014")
