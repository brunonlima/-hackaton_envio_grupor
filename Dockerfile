# Imagem base
FROM openjdk:17-jdk-alpine

# Diretório de trabalho
WORKDIR /app

# Copia os arquivos necessários para dentro do container
COPY build/libs/app-0.0.1-SNAPSHOT-plain.jar app.jar

# Porta exposta pelo container
EXPOSE 8080

# Comando de inicialização
CMD ["java", "-jar", "app.jar"]
