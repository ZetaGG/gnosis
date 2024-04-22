import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gnosis/src/widgets/icon_container.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(172, 37, 185, 234),
                Color.fromARGB(255, 255, 255, 255),
              ],
              begin: Alignment.topLeft,
              end: Alignment.center
            ),
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 200,           
            ),
            children: <Widget> [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const IconContainer(
              url: 'https://th.bing.com/th/id/R.3726b36db22a8d35f121b91c23528612?rik=%2bhVspPIqHdYlTw&riu=http%3a%2f%2ftecuruapan.edu.mx%2fwp-content%2fuploads%2f2017%2f10%2flogo_simbolo2.png&ehk=VL%2fQ2gfiaKqm5w2PhwQHWE6Cm8cFdZQNejd85gRlzac%3d&risl=&pid=ImgRaw&r=0',
            ),
             const Text(
              'Bienvenido',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
             ),
              const Divider(
                height: 20.0,
                color: Color.fromARGB(0, 0, 0, 0),
              ),
              SizedBox(
                width: double.infinity,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).push('/login');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 99, 208, 255),
                    shadowColor: const Color.fromARGB(255, 0, 0, 0),
                     ),
                  child: const Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                  
                )
              ),

                const Divider(
                height: 20.0,
                color: Color.fromARGB(0, 0, 0, 0),
              ),
              SizedBox(
                width: double.infinity,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).push('/register');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 99, 208, 255),
                    shadowColor: const Color.fromARGB(255, 0, 0, 0),
                     ),
                  child: const Text(
                    'Registrarse',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                  
                )
              )
              
            ],
              )
              
            ],
      ),
    )
        );
  }
}