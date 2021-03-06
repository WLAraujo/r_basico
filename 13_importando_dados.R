# Intala��o e carregamento de pacotes ################################

library(datasets)  # Datasets b�sicos

# Instala��o de pacman se requisitado
if (!require("pacman")) install.packages("pacman")

# Usando pacman para carregar pacman e r input output
pacman::p_load(pacman, rio) 

# Sobre arquivos excel ########################################

# Segundo a pr�pria documenta��o do r devemos evitar importar aquivos excel
browseURL("http://j.mp/2aFZUrJ")

# Realizando importa��o com RIO #######################################

# CSV
rio_csv <- import("C:/Users/limaw/OneDrive/Documents/R/r_basics/mbb.csv")
head(rio_csv)

# TXT
rio_txt <- import("C:/Users/limaw/OneDrive/Documents/R/r_basics/mbb.txt")
head(rio_txt)

# Excel XLSX
rio_xlsx <- read_excel("C:/Users/limaw/OneDrive/Documents/R/r_basics/mbb.xlsx")
head(rio_xlsx)

# Tive alguns problemas em ler o xlsx ent�o vou instalar alguns pacotes para resolver
install.packages("readxl")
install.packages('Rcpp')
library(readxl)
library(Rcpp)

# Visualizador de dados do R ##############################################

?View
View(rio_csv)

# Lendo txt com fun��es base do r #################################

# Usando read.table em um txt o r considera que a separa��o pe feita por tab
r_txt1 <- read.table("C:/Users/limaw/OneDrive/Documents/R/r_basics/mbb.txt", header = TRUE)

# Podemos tamb�m customizar o separador do txt
r_txt2 <- read.table("C:/Users/limaw/OneDrive/Documents/R/r_basics/mbb.txt", 
                     header = TRUE, 
                     sep = "\t")

# Lendo csv com fun��es base do r ###################################

trends.csv <- read.csv("C:/Users/limaw/OneDrive/Documents/R/r_basics/mbb.csv", header = TRUE)

# Limpeza #################################################

# Ambiente
rm(list = ls()) 

# Pacotes
p_unload(all)  # Remove all add-ons

# Console
cat("\014")  # ctrl+L