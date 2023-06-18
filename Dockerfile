#imagem base 
FROM openjdk:11

#definir o diretório de trabalho
WORKDIR /app

#migração arquivos aplicação
COPY . /app/

#automatização da build do java
RUN javac helloDocker.java

#definição ponto de entrada da aplicação
ENTRYPOINT ["java","helloDocker"]
