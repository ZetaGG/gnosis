import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gnosis/src/widgets/input_text.dart';
import 'package:go_router/go_router.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  
  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  GlobalKey<FormState> _formKey = GlobalKey();
  late String _email='';
  late String _password='';
  late String _name='';

  _submit() {
    final isLogin = _formKey.currentState?.validate();
    if (isLogin ?? false) {
      // Perform login action with _email and _password
      print('Logging in with email: $_email and password: $_password');
    }
  }

  @override
  Widget build(BuildContext context) {
     return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[

          InputText(
            hint: 'Nunero de control',
            label: "Nunero de control",
            keyboard: TextInputType.name,
            icono: Icon(Icons.verified_user_rounded),
            onChanged: (data) {
              _name = data;
            },
            validator: (data) {
              if (data.isEmpty) {
                return "No.Control no valido";
              }
              return '';
            },
          ),
          const Divider(
                height: 20.0,
                color: Color.fromARGB(0, 0, 0, 0),
              ),
          InputText(
            hint: 'Enter your email',
            label: "Correo electronico",
            keyboard: TextInputType.emailAddress,
            icono: Icon(Icons.verified_user),
            onChanged: (data) {
              _email = data;
            },
            validator: (data) {
              if (!data.contains('@')) {
                return "Email no valido";
              }
              return '';
            },
          ),
          const Divider(
                height: 20.0,
                color: Color.fromARGB(0, 0, 0, 0),
              ),
          InputText(
            hint: 'Contraseña',
            label: "Contraseña",
            obsecure: true,
            icono: const Icon(Icons.lock_outline),
            onChanged: (data) {
              _password = data;
            },
            validator: (data) {
              if (data.isEmpty) {
                return "Contraseña no valida";
              }
              return '';
            },
          ),
          const Divider(
                height: 20.0,
                color: Color.fromARGB(0, 0, 0, 0),
              ),
          SizedBox(
            width: double.infinity,
            height: 50.0,
            child: ElevatedButton(
              onPressed: _submit,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 99, 208, 255),
                shadowColor: const Color.fromARGB(255, 0, 0, 0),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  GoRouter.of(context).push('/register');
                },
                child: const Text(
                  'No tengo cuenta',
                  style: TextStyle(
                    color: Color.fromARGB(255, 24, 166, 255),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}