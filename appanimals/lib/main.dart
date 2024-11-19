import 'package:flutter/material.dart'; // Importa el paquete de widgets de Flutter.
import 'package:appanimals/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

// StatelessWidget: pagina estatica. StatefullWidget: dinamico.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // '/': (context) => const HomeScreen(),
        // '/animals': (context) => const AnimalsScreen(),
      },
    );
  }
}
