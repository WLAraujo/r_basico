# Carregando pacotes ############################################

library(datasets)

# Carregando dados ################################################

# Annual Canadian Lynx trappings 1821-1934
?lynx # Informações do dataset
head(lynx) # Primeiras linhas do dataset

# Plotando um histograma ################################################

# Padrão
hist(lynx)

# Customizando um pouco o histograma
hist(lynx,
     breaks = 14,          # "Suggests" 14 bins
     freq   = FALSE,       # Axis shows density, not freq.
     col    = "thistle1",  # Color for histogram
     main   = paste("Histogram of Annual Canadian Lynx",
                    "Trappings, 1821-1934"),
     xlab   = "Number of Lynx Trapped")

# Sobrepondo o histograma por uma distribuição normal com média e desvio padrão igual dos dados
curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)),
      col = "thistle4",  # Color of curve
      lwd = 2,           # Line width of 2 pixels
      add = TRUE)        # Superimpose on previous graph

# Adicionando dois estimadores de densidade
lines(density(lynx), col = "blue", lwd = 2)
lines(density(lynx, adjust = 3), col = "purple", lwd = 2)

# Adicionando plot de ticks no eixo x
rug(lynx, lwd = 2, col = "gray")

# Limpeza #################################################

# Limpeza de pacotes
detach("package:datasets", unload = TRUE)  # For base

# Limpeza dos plots
dev.off()  # But only if there IS a plot

# Limpar o console
cat("\014")  # ctrl+L