import 'package:flutter/material.dart';
import '../widgets/navigation_bar.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DentalNavigationBar(),
      body: const Center(
        child: Text('Explore our wide range of dental services.'),
      ),
    );
  }
}
