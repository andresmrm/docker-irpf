# Docker IRPF 2019

Docker para IRPF (programa da Receita Federal para declaração de imposto de renda).

## Como usar

Assumindo que você tem o docker-compose instalado e que consegue rodá-lo sem `sudo`:

1. Clone este repositório.
2. *Esse passo é opcional, mas importante caso não queira perder os dados quando o container for deletado*: Descomente a última linha em `docker-compose.yml`, modificando a parte antes do `:` para apontar para onde você quer que o IRPF salve os dados localmente. Caso a pasta local não exista, crie-a, ou o docker a criará como root gerando problemas na execução do IRPF. 
3. `docker-compose build`
4. `xhost +local:docker && docker-compose up`

## Próximos anos

Para usar esse código no ano que vem, talvez seja só editar o `Dockerfile`, atualizando o arquivo baixado pelo `wget` e `WORKDIR`.

## Créditos

Inspirado em: [eszanon/dockerized-irpf-2017](https://github.com/eszanon/dockerized-irpf-2017) e [farribeiro/wscef-docker](https://github.com/farribeiro/wscef-docker).
