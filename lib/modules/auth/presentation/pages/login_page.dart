import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../presentation/controller/auth_controller.dart';
import '../../../../core/widgets/custom_input.dart';
import '../../../../core/widgets/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController(text: 'user@example.com');
  final TextEditingController _password = TextEditingController(text: 'password');

  @override
  Widget build(BuildContext context) {
    final ctrl = Provider.of<AuthController>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomInput(controller: _email, hint: 'Email'),
            const SizedBox(height: 12),
            CustomInput(controller: _password, hint: 'Senha', obscure: true),
            const SizedBox(height: 12),
            ctrl.loading
                ? const CircularProgressIndicator()
                : CustomButton(
                    label: 'Entrar',
                    onPressed: () async {
                      final ok = await ctrl.login(_email.text, _password.text);
                      if (ok) {
                        Navigator.pushReplacementNamed(context, '/tasks');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Falha no login')));
                      }
                    },
                  )
          ],
        ),
      ),
    );
  }
}
