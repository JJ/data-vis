library(ggplot2)

elecciones <- read.csv('../data/resultadoselecciones2015.csv')
qplot(elecciones$Sector, elecciones$Votos,color=elecciones$Candidato)
qplot(elecciones$Sector, elecciones$Votos,color=elecciones$Candidato,size=elecciones$Votos)

ggplot(data=elecciones, aes(x=Sector, y=Votos, fill=Candidato))+geom_bar(stat="identity")
qplot(data=elecciones, x=Sector, y=Votos, shape=Candidato, facets=Candidato~Sector)
