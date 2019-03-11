# Docker-IRPF 2019

Docker para IRPF (programa da Receita Federal para declaração de imposto de renda).

## Como usar

Assumindo que você tem o docker-compose instalado:

1. Clone este repositório.
2. Descomente a última linha em `docker-compose.yml`, modificando a parte antes do `:` para apontar para onde você quer que o IRPF salve os dados localmente. (opcional, mas importante caso não queira perder os dados quando o container for deletado)
3. `docker-compose build`
4. `docker-compose up`

## Próximos anos

Para usar esse código no ano que vem, talvez seja só editar o `Dockerfile`, atualizando o arquivo baixado pelo `wget` e `WORKDIR`.

## Créditos

Inspirado em:
https://github.com/eszanon/dockerized-irpf-2017
e
https://github.com/farribeiro/wscef-docker
.
