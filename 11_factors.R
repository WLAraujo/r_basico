# Fatores s�o "atributos" dos vetores que especificam valores poss�veis e sua ordem

# Criando os dados ##############################################
(x1 <- 1:3)
(y  <- 1:9)

# Combinando as vari�veis em um dataframe que vai repetir o vetor menor
(df1 <- cbind.data.frame(x1, y))
typeof(df1$x1) # Tipo da coluna X1
str(df1) # Mostra a estrutura do dataframe

# Uso do m�todo AS.FACTOR para definir valores e ordem ############################
(x2  <- as.factor(c(5,3,1)))
(df2 <- cbind.data.frame(x2, y))
typeof(df2$x2)
str(df2) # Mostra que a coluna x2 possui n�veis

# Convertendo vari�vel existente para fator #######################
x3  <- c(1:3)
df3 <- cbind.data.frame(x3, y)
(df3$x3 <- factor(df3$x3,
                  levels = c(1, 2, 3)))
typeof(df3$x3)
str(df3)

# R�tulos para os fatores ########################################
x4  <- c(1:3)
df4 <- cbind.data.frame(x4, y)
df4$x4 <- factor(df4$x4,
                 levels = c(1, 2, 3),
                 labels = c("macOS", "Windows", "Linux")) # Altera automaticamente os valores de x4 para os r�tulos 
df4
typeof(df4$x4)
str(df4)

# Alterando ordem de fatores ###############################

x5  <- c(1:3)
df5 <- cbind.data.frame(x5, y)
(df5$x5 <- ordered(df5$x5,
                   levels = c(3, 1, 2),
                   labels = c("No", "Maybe", "Yes"))) # Aqui a hierarquia � outra, mas o r�tulos substituiram os valores de forma semelhante
df5
typeof(df5$x5)
str(df5)

# Resumindo, fatores agem como valores que deteminam uma ordem espec�fica mas que podem estar atr�s de r�tulos

# Limpeza #################################################

# Ambiente
rm(list = ls()) 

# Console
cat("\014")  # ctrl+L
 