import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Text('usedev'), // O título precisa ser um widget Text
        centerTitle: true, // Letra maiúscula no "Title"
        actions: [
          IconButton(
            onPressed: () {},
            // O parâmetro icon exige um widget Icon()
            icon: const Icon(Icons.person, size: 40),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined, size: 40),
          ),
        ],
      ),
      // "columns" com letra minúscula estava errado, o correto é Column
     body: Column(
        children: [
          // Substituímos o DecoratedBox por um Container para definir a altura
          Container(
            width: double.infinity, // Ocupa toda a largura
            height: 400,            // Define uma altura para o banner aparecer
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/banner_1.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center( // Centraliza a logo sobre o banner
              child: Image.asset(
                'assets/logo.png', // Removido o "name:" que causava erro
                height: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}