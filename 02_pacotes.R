# Pacotes s�o conjuntos de c�digos que adicionam novas funcionalidades
# Para obter pacotes em python podemos usar: CRAN, Crantastic e Github
# CRAN = Comprehensive R Archive Network (https://cran.r-project.org/web/packages/available_packages_by_name.html)

# Uma recomenda��o � usar o pacman (package manager) para gerenciamento de pacotes
# O pacman instala e carrega automaticamente os pacotes que forem sendo utilizados
install.packages("pacman")

# Ap�s a instala��o de um pacote, como o pacman, devemos carreg�-lo
# Podemos fazer isso com um dos seguinte comandos
require(pacman)  # Possui mensagem de confirma��o
library(pacman)  # N�o possui mensagem de confirma��o

# Para usar uma fun��o de um pacote sem carregar ele podemos usar :: para separa o pacote e a fun��o
# O que o comando abaixo faz � carregar o pacote quando ele � usado independente do carregamento
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, 
               stringr, tidyr) 

# O que alguns dos pacotes acima fazer
# dplyr - manipular dataframes
# tidyr - limpar informa��o
# stringr - manipular strings
# lubridate - manipular datas
# httr - trabalhar com dados de sites
# ggvis - visualiza��es interativas
# ggplot2 - pacote mais comum para criar gr�ficos
# shiny - criar websites interativos
# rio - importar e exportar dados
# rmarkdown - criar notebooks e outros documentos com markdown

# Limpeza #################################################

# Limpar pacotes
p_unload(dplyr, tidyr, stringr) # Limpar pacotes espec�ficos
p_unload(all)  # Limpa todos os pacotes
detach("package:datasets", unload = TRUE)  # Para pacotes base do R

# Limpar console
cat("\014")  # ctrl+L