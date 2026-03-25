
library(tidyverse)

eleicao <- read.csv("C:\\Users\\guide\\Downloads\\eleicoes_2022.csv")
glimpse(eleicao)

grafico_barras <- eleicao %>%
  group_by(candidato)%>%
  ggplot(aes(x=candidato, y=votos)) +geom_col() 
print(grafico_barras)

boxplot <- eleicao%>%
  group_by(candidato)%>%
  ggplot(aes(x=candidato, y=votos)) +geom_boxplot()
print(boxplot)
