import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:appanimals/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Amor Salvaje',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.green,
      ),
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                'appanimals/assets/images/portada.png'), // Ruta de tu imagen local
            const SizedBox(height: 20), // Espaciado entre la imagen y el texto
            const Text(
              "Este es un texto normal debajo de la imagen.",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.help,
          color: Colors.white,
        ),
        onPressed: () {
          log('Clicked');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
