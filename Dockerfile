FROM openjdk:8-alpine

RUN apk add --no-cache wget ttf-dejavu && \
  adduser -D -u 1000 irpf

RUN wget http://downloadirpf.receita.fazenda.gov.br/irpf/2019/irpf/arquivos/IRPF2019-1.5.zip -O irpf.zip && \
  unzip irpf.zip -d /opt/ && \
  rm irpf.zip
WORKDIR /opt/IRPF2019

USER irpf
CMD java -jar irpf.jar
