# InstaAula

Aplicação desenvolvida em **Flutter** como parte de um projeto acadêmico.

O projeto simula algumas funcionalidades básicas de uma aplicação de rede social, incluindo:

* Tela de Login;
* Cadastro de usuário;
* Recuperação de senha;
* Tela inicial;
* Tela de Perfil;
* Edição de Perfil;
* Foto de Perfil;
* Logout.

## Como testar a aplicação

Para testar a aplicação corretamente, é necessário **criar um usuário primeiro**.

### 1. Criar uma conta

Na tela de Login, selecione a opção:

**Criar uma nova conta**

Preencha os campos solicitados:

* Nome;
* E-mail;
* Nome de usuário;
* Senha;
* Confirmar senha.

Após realizar o cadastro, retorne para a tela de Login.

### 2. Realizar o login

Utilize o **e-mail e a senha cadastrados** para acessar a aplicação.

Após o login, será possível acessar as demais funcionalidades, como o Perfil e a edição dos dados do usuário.

## ⚠️ Observação importante

Este projeto **não utiliza banco de dados**.

Os dados do usuário são armazenados **apenas temporariamente em memória enquanto a aplicação estiver aberta**.

Isso significa que:

* O usuário precisa ser cadastrado novamente caso a aplicação seja encerrada;
* Os dados cadastrados não são persistidos;
* Ao fechar ou reiniciar a aplicação, o usuário cadastrado será perdido;
* Para testar o Login, primeiro realize um novo cadastro após iniciar a aplicação.

## Tecnologias utilizadas

* **Flutter**
* **Dart**
* Material Design

## Execução

Para executar o projeto, tenha o Flutter instalado e execute:

```bash
flutter pub get
```

Depois:

```bash
flutter run
```

## Estrutura principal

```text
lib/
├── main.dart
├── models/
│   └── usuario.dart
├── services/
│   └── user_service.dart
└── pages/
    ├── buscar_page.dart
    ├── cadastro_page.dart
    ├── editar_perfil_page.dart
    ├── feed_page.dart
    ├── home_page.dart
    ├── login_page.dart
    ├── perfil_page.dart
    ├── recuperar_senha.dart
    └── reels_page.dart
```

## Projeto acadêmico

Projeto desenvolvido para fins acadêmicos, com o objetivo de praticar desenvolvimento de interfaces, navegação entre telas, gerenciamento de estado e criação de fluxos de autenticação em Flutter.
