library(ggplot2)

elecciones <- read.csv('../data/resultadoselecciones2015.csv')
qplot(elecciones$Sector, elecciones$Votos,color=elecciones$Candidato)
qplot(elecciones$Sector, elecciones$Votos,color=elecciones$Candidato,size=elecciones$Votos)
