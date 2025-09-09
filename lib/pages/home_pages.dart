import 'package:flutter/material.dart';
import '/models/produk.dart';
import '/widgets/produk_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Product> products = [
    Product(
      name: "americano",
      description: "Es susu dengan perpaduan americano.",
      price: 10000,
      imageAsset: "assets/images/foto1.jpeg",
    ),
    Product(
      name: "Mie Ayam (Edi)",
      description: "Mie ayam jumbo dengan ekstra ayam.",
      price: 15000,
      imageAsset: "assets/images/mie.jpeg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplikasi Belanja"),
        backgroundColor: Colors.grey[400],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
      ),
    );
  }
}
