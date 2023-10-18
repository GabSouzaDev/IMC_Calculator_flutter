# Calculadora de IMC com Flutter

Este é um projeto que eu desenvolvi usando o framework Flutter para criar uma aplicação móvel que calcula o índice de massa corporal (IMC) de uma pessoa. O IMC é uma medida que relaciona o peso e a altura de uma pessoa e indica se ela está dentro de uma faixa saudável ou não. O projeto utiliza os conceitos de widgets, estados, temas e navegação.

## Como usar

Para usar a aplicação, você precisa ter o Flutter instalado no seu computador e um emulador ou dispositivo físico para rodar o app. Você pode seguir as instruções do site oficial do Flutter para configurar o ambiente: https://flutter.dev/docs/get-started/install

Depois de clonar ou baixar este repositório, abra o terminal na pasta do projeto e execute o comando `flutter run` para iniciar a aplicação. Você verá uma tela inicial com um campo para digitar o seu peso e outro para digitar a sua altura. Ao digitar, o programa já irá começar a calcular seu IMC automaticamente e mostrará o seu IMC e uma mensagem indicando se você está abaixo, dentro ou acima do peso ideal. Além disso, você consegue checar a tabela clicando no botão "VER TABELA IMC".

## Recursos

Este projeto utiliza os seguintes recursos do Flutter:

- Scaffold: um widget que fornece a estrutura básica de uma tela, com um appbar, um body e um floating action button.
- AppBar: um widget que mostra uma barra superior com um título e um ícone.
- TextField: um widget que permite ao usuário digitar um texto.
- Text: um widget que mostra um texto simples na tela.
- TextStyle: uma classe que define o estilo de um texto, como cor, tamanho, fonte, etc.
- ThemeData: uma classe que define o tema da aplicação, como cores primárias, secundárias, brilho, etc.
- Navigator: uma classe que gerencia a navegação entre as telas da aplicação.
- SizedBox: Um widget que permite criar espaçamento entre widgets.
- Expanded: Um widget que flexbiliza os elementos
- ShowModalBottomSheet: Um widget que monta uma janela na parte inferior da tela
- Row: Widget que alinha os conteudos em linha
- Column: widget que alinha os conteudos em coluna
- StatefulWidget: uma classe que representa um widget que tem estado, ou seja, que pode mudar durante a execução da aplicação.
- State: uma classe que armazena os dados e a lógica de um widget com estado.
