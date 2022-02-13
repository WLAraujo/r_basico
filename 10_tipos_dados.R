# Tipos de dados ###############################################

# Numérico

n1 <- 15  # Tipo double por padrão
n1
typeof(n1)

n2 <- 1.5
n2
typeof(n2)

# Caracter

c1 <- "c"
c1
typeof(c1)

c2 <- "a string of text" # Também é do tipo caractere
c2
typeof(c2)

# Lógico

l1 <- TRUE
l1
typeof(l1)

l2 <- F
l2
typeof(l2)

# Estruturas de dados ##########################################

## Vetor ##################################################

# Vetor numérico
v1 <- c(1, 2, 3, 4, 5)
v1
is.vector(v1) # Verifica se é vetor

# Vetor de caracteres
v2 <- c("a", "b", "c")
v2
is.vector(v2)

# Vetor booleano
v3 <- c(TRUE, TRUE, FALSE, FALSE, TRUE)
v3
is.vector(v3)

# Caso um vetor misture tipos de dados os valores serão convertido para caractere
v4 <- c(TRUE, "a", 2)
v4
is.vector(v4)

## Matrizes ##################################################

# Cria uma matriz a partir de um vetor, quebrando o vetor na quantidade de linhas solicitada
m1 <- matrix(c(T, T, F, F, T, F), nrow = 2)
m1
# Observe que a criação acima vai criando a matriz pelas colunas

# Abaixo criamos outra matriz, mas o parâmetro byrow indica criação por linhas
m2 <- matrix(c("a", "b", 
               "c", "d"), 
             nrow = 2,
             byrow = T)
m2

## Array ###################################################

# Abaixo criamos um array que divide os dados (vetor de 1 a 24) em 2 tabelas de dimensão 3x4
a1 <- array(c( 1:24), c(4, 3, 2))
a1

## Dataframes ##############################################

# Para criar um dataframe podemos combinar vetores de mesma dimensão
vNumeric   <- c(1, 2, 3)
vCharacter <- c("a", "b", "c")
vLogical   <- c(T, F, T)
dfa <- cbind(vNumeric, vCharacter, vLogical) # Combinação dos vetores em matriz de caracteres
dfa
typeof(dfa)
df <- as.data.frame(cbind(vNumeric, vCharacter, vLogical)) # Criação de dataframe que respeita os tipos
df
typeof(df)

## Criando listas (respeitam tipos) ####################################################
o1 <- c(1, 2, 3)
o2 <- c("a", "b", "c", "d")
o3 <- c(T, F, T, T, F)
list1 <- list(o1, o2, o3)
list1
list2 <- list(o1, o2, o3, list1)  # Listas de listas
list2
list3 <- list(1, "a", T)
list3

# Convertendo tipos ###########################################

## Conversão automática ######################################

# Converte para o tipo menos restritivo, geralmente caractere
(coerce1 <- c(1, "b", TRUE))
typeof(coerce1)

## Conversão para valor inteiro ###############################
(coerce2 <- 5)
typeof(coerce2)
(coerce3 <- as.integer(5))
typeof(coerce3)

## Conversão de caractere para numérico #############################

(coerce4 <- c("1", "2", "3"))
typeof(coerce4)
(coerce5 <- as.numeric(c("1", "2", "3")))
typeof(coerce5)

## Converter matriz para dataframe #############################
(coerce6 <- matrix(1:9, nrow= 3))
is.matrix(coerce6)
(coerce7 <- as.data.frame(matrix(1:9, nrow= 3)))
is.data.frame(coerce7)

# Limpeza #################################################

# Ambiente
rm(list = ls()) 

# Console
cat("\014")  # ctrl+L