library(ggplot2)
library(ggthemes)
library(plotly)

votos.claustro <- read.csv("../data/claustro.csv")

votos.plot <- ggplot()
    +geom_bar(data=votos.claustro,aes(x=reorder(Nombre,-Votos),y=Votos,fill=Votos),stat='identity')
    +theme_tufte()
+theme(axis.text.x = element_text(angle = 90, hjust = 1))
+labs("Votos a claustro ETSIIT",x="Candidatos")

