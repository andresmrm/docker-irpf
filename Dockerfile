FROM openjdk:8-alpine
RUN apk add --no-cache wget ttf-dejavu
RUN wget http://downloadirpf.receita.fazenda.gov.br/irpf/2019/irpf/arquivos/IRPF2019-1.0.zip -O irpf.zip && \
  unzip irpf.zip
WORKDIR /IRPF2019
CMD java -jar irpf.jar
