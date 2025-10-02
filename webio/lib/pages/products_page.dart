import 'package:flutter/material.dart';
import '../widgets/navigation_bar.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DentalNavigationBar(),
      body: const Center(
        child: Text('We offer a wide range of dental care products.'),
      ),
    );
  }
}
