import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _info = 'Informe Credenciais de Acesso';
  String _emailUser = '';
  String _passwordUser = '';

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void _logar() {
    setState(() {
      if (emailController.text == '' || passwordController.text == '') {
        _info = 'Informe obrigatoriamente';
        return;
      }
      _emailUser = emailController.text;
      _passwordUser = passwordController.text;
      if (_emailUser == "admin@controlador.com" && _passwordUser == "123") {
        Navigator.of(context).pushReplacementNamed('/home');
      } else {
        _info = 'Tentativa inválida';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email:',
                  hintText: 'Email de acesso',
                ),
                controller: emailController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Senha de acesso',
                ),
                controller: passwordController,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  _info,
                  style: const TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  child: const Text('Efetuar login'),
                  onPressed: () {
                    _logar();
                  },
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
