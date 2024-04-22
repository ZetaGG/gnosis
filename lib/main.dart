import 'package:flutter/material.dart';
import 'package:gnosis/config/router/app_router.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    
    return MaterialApp.router(
      title: 'Gnosis',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
     
    );
  }
}

