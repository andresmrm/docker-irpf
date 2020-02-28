# Docker IRPF 2020

Docker para IRPF (programa da Receita Federal para declaração de imposto de renda).

## Como usar

1. ~~*Esse passo é opcional, mas importante caso não queira perder os dados quando o container for deletado*. Descomente a última linha em `docker-compose.yml`, modificando a parte antes do `:` para apontar para onde você quer que o IRPF salve os dados localmente. Caso a pasta local não exista, crie-a, ou o docker a criará como root gerando problemas na execução do IRPF.~~ **(NÃO ROLOU)**
2. `docker-compose up --build`

## Próximos anos

Para usar esse código no ano que vem, talvez seja só editar o `Dockerfile`, atualizando o arquivo baixado pelo `wget` e `WORKDIR`.

## Créditos

Inspirado em [eszanon/dockerized-irpf-2017](https://github.com/eszanon/dockerized-irpf-2017), [farribeiro/wscef-docker](https://github.com/farribeiro/wscef-docker) e [felipewer/irpf](https://github.com/felipewer/irpf). Esse último eu só vi depois de ter feito este código, e os dois são bem parecidos... Talvez uma vantagem deste aqui é usar o Alpine Linux, que é um pouco menor.
