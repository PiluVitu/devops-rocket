# 2. Criando nossa primeira imagem

## Entendendo sobre uma imagem base

- Primeiro precisamos entender o que a aplicação precisa como um todo para rodar plenamente e definir o passo a passo

### Comando

#### Build Image

- Para buildar um dockerfile, se usa o comando:

```bash
docker build -t <nome da imagem> -f <nome do arquivo> .
```

> No comando acima vemos as flags:
>
> **-t**: Responsavel por deixar o usuário definir o nome da imagem
>
> **-f**: Responsavel por deixar o usuário definir o nome do arquivo dockerfile
>
> **ATENÇÃO**: O que informa em qual local está a imagem é o "." que no comando referido informa que a imagem está na raiz do projeto

- A base do comando é:

```bash
docker build .
```

#### Run Image

```bash
docker run --rm -p <porta do meu pc>:<porta que aplicação roda> -d <nome da imagem>
```

> No comando acima vemos as flags:
>
> **--rm**: Comando sinaliza que o container depois de parado será deletado
>
> **-p**: Atravez dela consigo passar a porta do meu pc e a porta que a aplicação está rodando no container, a fim de conseguirmos usar a aplicação fora do container
>
> **-d**: Responsavel por fazer com que a execução do docker não trave o terminal e ocorra no 2 plano

#### Containers in execute

- O comando a seguir vai listar todos os containers que estão ativos

```bash
docker ps
```

#### Stop and Start Containers

```bash
docker stop <id do container>
docker start <id do container>
```
