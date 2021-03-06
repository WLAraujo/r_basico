# Operador : ###########################################

# : Define um intervalo que pode ser na ordem crescencte ou descrescente
x1 <- 0:10
x1
x2 <- 10:0
x2

# Operador SEQ ######################################################

?seq  # Documenta��o seq

# Cria sequ�ncia simples que vai de 1 at� 10, mesma coisa do 1:10
(x3 <- seq(10))
# Especifica��o do passo que desejamos colocar no vetor
(x4 <- seq(30, 0, by = -3))

# Operador de concatena��o c #############################

?c  # Documenta��o c

# O c concatena valores em um vetor
x5 <- c(5, 4, 1, 6, 7, 2, 2, 3, 2, 8)
x5

# Operador de scan #####################################################

?scan  # Documenta��o scan

# Ap�s rodar scan() insira os dados no console
# Aperte enter duas vezes para terminar
x6 <- scan()  
x6

# Operador de repeti��o rep ######################################################

?rep  #  Documenta��o rep

# Cria vetor com o valor desejado e repetindo o valor passado
x7 <- rep(TRUE, 5)
x7

# Tamb�m podemos repetir um conjunto
x8 <- rep(c(TRUE, FALSE), 5)
x8

# Tamb�m podemos determinar quantas vezes queremos cada elemento
x9 <- rep(c(TRUE, FALSE), each = 5)
x9

# Limpeza #################################################

# Ambiente
rm(list = ls()) 

# Console
cat("\014")  # ctrl+L
