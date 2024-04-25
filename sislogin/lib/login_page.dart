import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _info = 'Informe credenciais de acesso';
  String _emailUser = '';
  String _passwordUser = '';

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _logar() {
    setState(() {
      if (_emailController.text == '' || _passwordController.text == '') {
        _info = 'Preencha todos os campos';
        return;
      }
      _emailUser = _emailController.text;
      _passwordUser = _passwordController.text;
      if (_emailUser == 'admin@controlador.com' && _passwordUser == 'admin') {
        _info = 'Login efetuado com sucesso';
        Navigator.of(context).pushReplacementNamed('/home');
      } else {
        _info = 'Credenciais incorretas';
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
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Email de Acesso',
                ),
                controller: _emailController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Senha de acesso',
                ),
                controller: _passwordController,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  _info,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    child: const Text('Efetuar login'),
                    onPressed: () {
                      _logar();
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
