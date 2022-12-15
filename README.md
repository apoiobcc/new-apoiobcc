# Apoio ao BCC

Repositório de desenvolvimento do novo site do Apoio ao BCC.

## *Setup*

Para iniciar o desenvolvimento do projeto, copie o arquivo-exemplo de variáveis de ambiente e edite-o conforme suas
preferências:

```bash
$ cp .env.sample .env
```

### Docker

Para rodar o projeto em contêineres, você deve ter o [Docker](https://docs.docker.com/get-docker/) e o plugin 
[Docker Composer](https://docs.docker.com/compose/install/linux/) instalados no seu computador.

Com os requisitos, basta executar os seguintes comandos na pasta raiz do projeto:

```bash
$ docker compose up [-d]
```

A *flag* `-d` roda os contêineres em segundo plano. Em uma primeira execução, o comando acima demorará cerca
de 10 minutos para instalar todas as dependências e rodar a CMS (recomenda-se que a primeira execução não tenha a *flag*
`-d` para o acompanhamento do processo).

O endereço local de desenvolvimento do Docker é o `localhost`, com porta `80`. Para alterar a configuração da porta,
basta editar o arquivo `docker-compose.yml`.

### PHP e Composer

Para rodar o projeto apenas com o PHP e o Composer, instale os seguintes pré-requisitos:

- **PHP** 7.4
- **Composer** 1.0.0

Após isso, dê permissão de execução ao arquivo `run.sh`:

```bash
$ chmod +x run.sh
```

E, por fim, rode-o para iniciar o ambiente de desenvolvimento:

```bash
$ ./run.sh
```

O programa mostrará as instruções de endereço local e porta para a visualização da aplicação. 

## Contribuições

Para contribuir com este repositório, você deve criar uma nova *branch* com seu código, criar um *pull-request* com suas alterações e, preferencialmente, ter seu código revisado por pares. 

Primeiro, recupere as principais alterações realizadas em seu repositório local, executando:

```bash
$ git pull
```

Então, para criar uma nova *branch*, execute:

```bash
$ git checkout -b <nome-da-branch>
```

Conforme as mudanças realizadas em sua *branch* local, faça *commits* que expliquem expressamente as modificações na mensagem, rodando:

```bash
$ git commit -s -m "<sua-mensagem>"
```

A *flag* -s assina sua mensagem (se você não tiver uma assinatura, configure seu [nome de usuário](https://docs.github.com/en/get-started/getting-started-with-git/setting-your-username-in-git)
e seu [e-mail](https://docs.github.com/en/github-ae@latest/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-email-preferences/setting-your-commit-email-address))
e a *flag* -m define uma mensagem para o seu *commit*, por exemplo, "Atualiza componente de cabeçalho com o logotipo do aplicativo". É altamente recomendável que suas mensagens tenham modo verbal imperativo.
Se você precisar enviar suas alterações para uma *branch upstream*, execute:

```bash
$ git push --set-upstream origin <nome-da-branch>
```

Mas se você já estiver trabalhando em uma *branch upstream*, basta executar:

```bash
$ git push
```

Por fim, quando finalizar todas as mudanças desejadas, crie um *pull-request* na página principal do repositório ou na página da *branch* do GitHub e, eventualmente, solicite uma avaliação de outro membro contribuidor.
