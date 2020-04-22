data <- read.csv("C:\\Users\\pc\\Downloads\\raw_data.csv", header=T)
names(data)
head(data$Date.Announced)
as.character(data$Date.Announced)
install.packages("lubridate")
library(lubridate)
data$Date.Announced <- dmy(as.character(data$Date.Announced))
data2 <- data[data$Date.Announced<"2020-04-11",]
Bihar<-data2[data2$Detected.State=="Bihar",]
data2 <-   data2[1:7600,]
Bihar[Bihar$Type.of.transmission=="Imported",]


install.packages("igraph")
library(igraph)
g <- graph.formula(1-2,1-3,2-3,2-4,3-5,4-5,4-6,4-7,5-6,6-7)
V(g)
E(g)
str(g)
plot(g)
dg <- graph.formula(1-+2,1-+3,2++3)
plot(dg)
dg <- graph.formula(Sam-+Mary,Sam+-Tom,Mary++Tom)
plot(dg)
get.adjacency(g)
h <- induced.subgraph(g, 1:5)
plot(h)
install.packages("sand")
library(sand)
lazega
g.lazega <- graph.data.frame(elist.lazega, directed="FALSE", vertices = v.attr.lazega)
g.lazega$name <- "Lazega Lawyers"
vcount(g.lazega)
V(g.lazega)
ecount(g.lazega)
is.simple(g)
plot(g)
mg <- g+edge(2,3)
plot(mg)
wg <- simplify(mg)
plot(wg)
g.l <- graph.lattice(c(5,5,5))
data(aidsblog)
summary(aidsblog)
igraph.options(vertex.size=3, vertex.label=NA, edge.arrow.size=0.5)
par(mfrow=c(1,2))
plot(g.l, layout=layout.circle)
plot(aidsblog, layout=layout.circle)
par(mfrow=c(1,1))


names(Bihar$Detected.State)
