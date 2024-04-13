# 3. Redes e Volumes

## Camada de abstração 
- Vem para facilitar nosso gerenciamento de redes entre containers

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
#### Criar redes em outro driver  
```bash
docker network create --driver <nome do driver> <nome da rede>
```
#### Atribuir redes a um container ativo 
```bash
docker network connect <id da rede> <id do container>
```
#### Verificar detalhes de uma rede especifica 
```bash
docker network inspect <id da rede>
```
#### Atribuir redes na hora de subir um container 
```bash
docker run --network=<id ou nome da rede> -p <portaL:portaC> -d <nome da imagem>
```

### Volumes
#### Criar um novo volume
```bash
docker volume create <nome do volume>
```
#### Inspecionar um volume
```bash
docker volume inspect <nome do volume>
```