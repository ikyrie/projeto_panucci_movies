![](images_readme/capa.png)

<h1 align="center"> Projeto Panucci Movies </h1>

## Sobre

Projeto desenvolvido para o curso de Gerenciamento de Estados com BLoC/Cubit utilizando o framework Flutter. A aplicação simula uma bilheteria de filmes, exibe uma lista de opções, podendo filtrar por categorias e muda temas de acordo com o gênero do filme escolhido.

## Tecnologias

Implementamos com o Framework `Flutter`, que utiliza a linguagem de programação `Dart`.

**Bibliotecas** utilizadas no projeto:

> `bloc` e `flutter_bloc`: Para utilizar os recursos de gerenciamento de estados de BLoC/Cubit;

> `http`: Para realizar requisição de dados à internet.

## Projeto

O projeto possui três features que utilizam gerenciamento de estados com BLoC/Cubit, sendo elas:

1. Gerenciamento do **estado da tela `Home`**, que busca e exibe filmes;
2. Gerenciamento do **estado da tela `Home`**, com um **filtro** por categoria;
3. Gerenciamento do **estado dos temas da aplicação**, que podem mudar de acordo com a categoria do filme escolhido.

|            Home             |             Temas             |
| :-------------------------: | :---------------------------: |
| ![](images_readme/home.gif) | ![](images_readme/themes.gif) |

## Como executar

1. Primeiro você deve [instalar flutter](https://docs.flutter.dev/get-started/install) em sua máquina.

2. Então, você pode clonar o projeto do GitHub e entrar na pasta do projeto:

   ```shell
   git clone https://github.com/ikyrie/projeto_panucci_movies.git
   cd projeto_panucci_movies
   ```

3. Agora, para testar, você deve instalar os pacotes/dependêncas:

   ```shell
   flutter pub get
   ```

4. Por fim, pode executar o projeto com o seguinte comando:

   ```shell
   flutter run
   ```
