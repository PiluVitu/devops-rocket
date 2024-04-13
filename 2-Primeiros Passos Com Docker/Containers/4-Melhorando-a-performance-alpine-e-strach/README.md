# 4. Melhorando a performance Alpine e Stretch

## Alpine X Stratch 
- Alpine é uma versão da imagem que tem como base a ditro linux alpine, que é bastante 
enxuta e pequena, economizando bastante espaço na aplicação 
- Já a Strach é uma versão bem pequena(maior que a alpine), mas que tem como base o debian

## Multiplos estágios de build
- 


```bash
docker network <comando>
```
## Comandos
#### Acessar um terminal de um container docker 
```bash
docker exec -it <id do container> bash
```
### Redes
#### Criar redes no docker 
```bash
docker network create <nome da rede>
```

### Volumes
#### Criar um novo volume
```bash
docker volume create <nome do volume>
```