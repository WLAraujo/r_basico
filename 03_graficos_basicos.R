# Carregando pacote de datasets básicos ###################################

library(datasets)

# Mostrando dados ################################################

head(iris)

# Plotando dados com plot() ####################################

?plot  # Mostra a documentação de plot()

plot(iris$Species)  # Plotando variável categórica (Colunas)
plot(iris$Petal.Length)  # Plotando variável numérica (Dispersão)
plot(iris$Species, iris$Petal.Width)  # Fazendo cruzamento categórica x numérico (Boxplot)
plot(iris$Petal.Length, iris$Petal.Width)  # Fazendo cruzamento numérico x numérico (Dispersão)
plot(iris)  # Todos os cruzamentos possíveis (Dispersão)

# Plotar com parâmetros
plot(iris$Petal.Length, iris$Petal.Width,
     col = "#cc0000",  # Cor das amostras (vermelho em hex)
     pch = 19,         # Pontos sólidos para representar valores
     main = "Iris: Petal Length vs. Petal Width",
     xlab = "Petal Length",
     ylab = "Petal Width")

# Plotar gráficos com base em funções ################################

plot(cos, 0, 2*pi) # Cossenoide
plot(exp, 1, 5) # Exponencial
plot(dnorm, -3, +3) # Normal

# Plot de uma fórmula com parâmetros
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
