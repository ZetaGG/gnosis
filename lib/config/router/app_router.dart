import 'package:gnosis/src/screens/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:gnosis/src/screens/login.dart';
import 'package:gnosis/src/screens/register.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      builder: (context, state) => MyHomePage(),
    
    ),

    GoRoute(
          path: '/login', 
          builder: (context, state) => LoginPage(),),
          
    GoRoute(
          path: '/register', 
          builder: (context, state) => RegisterPage(),)
      

    
  ],
);
