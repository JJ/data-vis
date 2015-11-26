library(ggplot2)

elecciones <- read.csv('../data/resultadoselecciones2015.csv')
elecciones.sector <- data.frame(sector=elecciones$Sector, candidato=elecciones$Candidato,votos=elecciones$Votos)
qplot(elecciones.sector$sector, elecciones.sector$votos,facets=elecciones.sector$candidato)
