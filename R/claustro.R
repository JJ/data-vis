library(ggplot2)
library(ggthemes)

votos.claustro <- read.csv("../data/claustro.csv")

ggplot()+geom_bar(data=votos.claustro,aes(x=reorder(Nombre,-Votos),y=Votos,fill=Votos),stat='identity')+theme_tufte()+theme(axis.text.x = element_text(angle = 90, hjust = 1))
