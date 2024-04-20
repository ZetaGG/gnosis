import 'package:flutter/material.dart';
import 'package:gnosis/login.dart';
import 'package:gnosis/register.dart';
import 'package:gradients/gradients.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inicio',
      home: MyHomePage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de sesión/Registro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png'),
            SizedBox(height: 20),
            Text('Bienvenido'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
              },
              child: Text('Iniciar sesión'),
            ),
            SizedBox(height: 10),
            
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage()));
                },
              child: Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }
}