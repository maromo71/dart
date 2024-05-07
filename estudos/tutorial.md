# Parte 1: Fundamentos do Flutter

## Objetivos de Aprendizado
- Compreender a arquitetura básica do Flutter.
- Identificar os principais tipos de widgets e entender a importância de cada um no desenvolvimento de interfaces.

## Conteúdos

### 1. Introdução ao Flutter
Flutter é um framework de código aberto criado pela Google para o desenvolvimento de aplicativos para mobile, web e desktop a partir de uma única base de código. Flutter é único porque usa o próprio mecanismo de renderização para desenhar widgets, ao invés de utilizar componentes nativos da plataforma. Isso permite um alto grau de personalização e controle sobre a aparência e o comportamento dos aplicativos em todas as plataformas.

### 2. Widgets no Flutter
Widgets são as unidades básicas de construção de interfaces de usuário no Flutter. Tudo em Flutter é um widget, desde elementos de layout como linhas e colunas até elementos de interface como botões e sliders.

#### Stateless Widgets
Stateless Widgets são widgets que não armazenam estado; suas propriedades são finais e não mudam. Eles são ideais para partes da UI que dependem exclusivamente da configuração inicial e do contexto em que são criados.

#### Exemplo de Stateless Widget:
\\\dart
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        print('Clicked!');
      },
      child: Text('Click me'),
    );
  }
}
\\\

#### Stateful Widgets
Stateful Widgets mantêm estado que pode mudar durante a vida útil do widget. Eles são essenciais para UIs interativas, onde a aparência e a funcionalidade do widget podem mudar em resposta a eventos ou dados dinâmicos.

#### Exemplo de Stateful Widget:
\\\dart
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Count: $_counter'),
        RaisedButton(
          onPressed: _increment,
          child: Text('Increment'),
        ),
      ],
    );
  }
}
\\\

### 3. Navegação e Rotas no Flutter
A navegação no Flutter é gerenciada por um widget chamado Navigator, que permite transitar entre diferentes telas ou "routes". As telas são empilhadas em uma pilha (stack) gerenciada pelo Navigator.

#### Rotas Anônimas
Criadas "on-the-fly" usando o método Navigator.push(), que empilha uma nova tela.

#### Exemplo de Navegação Simples usando Navigator:
\\\dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => NewScreen()),
);
\\\

#### Rotas Nomeadas
Definidas no mapa de rotas do MaterialApp e referenciadas por um nome. Isso simplifica a navegação, especialmente em aplicativos grandes.

#### Exemplo de Configuração de Rotas Nomeadas:
\\\dart
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => HomePage(),
    '/details': (context) => DetailsPage(),
  },
);
\\\

# Parte 2: Gerenciamento de Estado e Ciclo de Vida dos Widgets

## Objetivos de Aprendizado
- Entender diferentes maneiras de gerenciar o estado em um aplicativo Flutter.
- Aprender sobre o ciclo de vida dos widgets Stateful.

## Conteúdos

### 1. Gerenciamento de Estado
O gerenciamento de estado é crucial para aplicativos que necessitam de interatividade e dados dinâmicos. Existem várias abordagens para gerenciar estados em Flutter, incluindo:

#### Local State Management (Gerenciamento de Estado Local)
Ideal para situações onde o estado é necessário apenas dentro de um widget ou sua árvore de subwidgets.

#### Global State Management (Gerenciamento de Estado Global)
Utilizado quando o estado precisa ser compartilhado entre várias partes do aplicativo. Ferramentas como Provider, Bloc, e Redux são comumente utilizadas para esse propósito.

### 2. Ciclo de Vida dos Widgets Stateful
Stateful Widgets têm um ciclo de vida mais complexo que os Stateless devido à sua natureza dinâmica. Os principais métodos do ciclo de vida incluem:

#### initState()
\\\dart
@override
void initState() {
  super.initState();
  // Initialize state.
}
\\\

#### didChangeDependencies()
\\\dart
@override
void didChangeDependencies() {
  super.didChangeDependencies();
  // React to inherited widget changes.
}
\\\

#### dispose()
\\\dart
@override
void dispose() {
  // Clean up the controller when the widget is removed from the
  // widget tree.
  super.dispose();
}
\\\

### 3. Navegação Avançada e Rotas
Navegação Declarativa (Navegação 2.0) foi introduzida para lidar com estados mais complexos de navegação e para melhor integração com a web. Permite definir rotas de maneira declarativa no MaterialApp e gerenciar o estado de navegação como um estado de aplicativo.

#### Exemplo de Navegação Declarativa
\\\dart
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => HomePage(),
    '/details': (context) => DetailsPage(),
  },
);
\\\

Esta abordagem ajuda no gerenciamento de histórico e na integração com sistemas que dependem de URLs, como navegadores na web.

# Parte 3: Integração do Flutter com Firebase (FlutterFire)

## Objetivos de Aprendizado
- Compreender como o Firebase pode ser integrado em aplicativos Flutter para adicionar funcionalidades de backend robustas.
- Explorar os principais serviços do Firebase que são comumente usados em aplicativos Flutter.

## Conteúdos

### 1. Visão Geral do Firebase
Firebase é uma plataforma de desenvolvimento de aplicativos móveis e da web criada pela Google. Oferece uma variedade de serviços como autenticação, bancos de dados, análise de aplicativos, configurações dinâmicas e muito mais, que ajudam os desenvolvedores a construir, melhorar e crescer seus aplicativos.

### 2. Configurando Firebase no Flutter
Para integrar Firebase com Flutter, os desenvolvedores precisam configurar o Firebase em seu projeto Flutter. Isso geralmente envolve:
- Adicionar o Firebase ao seu projeto através do console do Firebase.
- Configurar o Flutter com dependências específicas do Firebase, como firebase_core e outros pacotes para serviços específicos (por exemplo, firebase_auth para autenticação, cloud_firestore para banco de dados).
- Inicializar o Firebase no código Flutter com `Firebase.initializeApp()` dentro do método `main()`.

\\\dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
\\\

### 3. Serviços do Firebase Usados com Flutter
#### Firebase Auth
Oferece uma solução completa de autenticação que suporta autenticação por e-mail/senha, login através de redes sociais como Google, Facebook, Twitter e mais.

\\\dart
FirebaseAuth auth = FirebaseAuth.instance;

void signInWithEmailPassword(String email, String password) async {
  try {
    UserCredential userCredential = await auth.signInWithEmailAndPassword(
      email: email,
      password: password
    );
    print('User signed in: ${userCredential.user}');
  } catch (e) {
    print('Error signing in: $e');
  }
}
\\\

#### Cloud Firestore
Um banco de dados NoSQL flexível e escalável para armazenamento de dados em tempo real.

\\\dart
Firestore firestore = Firestore.instance;

void addData() {
  firestore.collection('users').add({
    'name': 'John Doe',
    'email': 'john.doe@example.com'
  }).then((documentReference) {
    print('Document added with ID: ${documentReference.documentID}');
  }).catchError((e) {
    print('Error adding document: $e');
  });
}
\\\

#### Firebase Storage
Para armazenar e servir conteúdo gerado pelo usuário, como fotos e vídeos.

#### Firebase Analytics
Para coletar análise de uso do aplicativo e entender melhor os comportamentos dos usuários.

#### Firebase Cloud Messaging (FCM)
Para enviar notificações push e mensagens diretas aos usuários de forma eficaz.

### Exemplo de Uso de Firebase em um App Flutter
Implementação de um sistema de login simples com **Firebase Auth**.

\\\dart
Future<User?> signInWithEmailPassword(String email, String password) async {
  try {
    final UserCredential result = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return result.user;
  } catch (e) {
    print(e.toString());
    return null;
  }
}
\\\

