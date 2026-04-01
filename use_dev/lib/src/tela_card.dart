import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCardWidget extends StatelessWidget {
  final String url;
  final String titulo;
  final String preco;

  const ProductCardWidget({
    super.key,
    required this.url,
    required this.titulo,
    required this.preco,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      color: const Color(0xFFEFEFEF),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: [
          Image.network(
            url,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              titulo,
              style: TextStyle(
                fontSize: 25,
                fontFamily: GoogleFonts.orbitron().fontFamily,
                fontWeight: .bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              preco,
              style: TextStyle(
                fontSize: 31,
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: .bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  ProductListScreen({super.key});

  final List<Map<String, String>> products = [
    {'titulo': 'Penico do Wolverine', 'preco': '170,00', 'url': 'https://placehold.co/600x600/png'},
    {'titulo': 'Máscara do Batman', 'preco': '85,50', 'url': 'https://placehold.co/600x600/png'},
    {'titulo': 'Escudo do Capitão', 'preco': '250,00', 'url': 'https://placehold.co/600x600/png'},
    {'titulo': 'Martelo do Thor', 'preco': '199,90', 'url': 'https://placehold.co/600x600/png'},
    {'titulo': 'Laço da Verdade', 'preco': '120,00', 'url': 'https://placehold.co/600x600/png'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true, 
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];

        return ProductCardWidget(
          titulo: product['titulo']!,
          preco: product['preco']!,
          url: product['url']!,
        );
      },
    );
  }
}