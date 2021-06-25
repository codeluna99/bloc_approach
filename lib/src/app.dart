import 'package:flutter/material.dart';
import 'screens/loginScreen.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return Provider(
      child: MaterialApp(
        title: 'login BLOC',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
