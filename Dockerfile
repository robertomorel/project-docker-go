##################################
######## 1a Execução #############
##################################
# Imagem
FROM golang:alpine as builder
WORKDIR /go/src/app
# Copia todos os arquivos que estão na máquina e cola no container
COPY . .
# Responde na porta 8080 caso algum outro container for comunicar
#EXPOSE 8080
RUN CGO_ENABLED=0 go build -o /app main.go

##############################################################
######## 2a Execução #########################################
# Para não trazer depenpencias desnecessárias para produção ##
##############################################################
FROM scratch
# Copia tudo o que tiver no /app do builder para a pasta atual do container (/app)
COPY --from=builder /app /app
EXPOSE 8080
CMD ["/app"]

# PARA EXECUTAR O DOCKERFILE: docker build -t nome-da-imagem .
# Criar uma imagem a partir dos comandos do Dockerfile
# -t nome-da-imagem -> nome da imagem
# . -> na pasta atual