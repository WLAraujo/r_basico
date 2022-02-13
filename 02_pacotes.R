# Pacotes são conjuntos de códigos que adicionam novas funcionalidades
# Para obter pacotes em python podemos usar: CRAN, Crantastic e Github
# CRAN = Comprehensive R Archive Network (https://cran.r-project.org/web/packages/available_packages_by_name.html)

# Uma recomendação é usar o pacman (package manager) para gerenciamento de pacotes
# O pacman instala e carrega automaticamente os pacotes que forem sendo utilizados
install.packages("pacman")

# Após a instalação de um pacote, como o pacman, devemos carregá-lo
# Podemos fazer isso com um dos seguinte comandos
require(pacman)  # Possui mensagem de confirmação
library(pacman)  # Não possui mensagem de confirmação

# Para usar uma função de um pacote sem carregar ele podemos usar :: para separa o pacote e a função
# O que o comando abaixo faz é carregar o pacote quando ele é usado independente do carregamento
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, 
               stringr, tidyr) 

# O que alguns dos pacotes acima fazer
# dplyr - manipular dataframes
# tidyr - limpar informação
# stringr - manipular strings
# lubridate - manipular datas
# httr - trabalhar com dados de sites
# ggvis - visualizações interativas
# ggplot2 - pacote mais comum para criar gráficos
# shiny - criar websites interativos
# rio - importar e exportar dados
# rmarkdown - criar notebooks e outros documentos com markdown

# Limpeza #################################################

# Limpar pacotes
p_unload(dplyr, tidyr, stringr) # Limpar pacotes específicos
p_unload(all)  # Limpa todos os pacotes
detach("package:datasets", unload = TRUE)  # Para pacotes base do R

# Limpar console
cat("\014")  # ctrl+L