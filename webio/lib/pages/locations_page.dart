import 'package:flutter/material.dart';
import '../widgets/navigation_bar.dart';

class LocationsPage extends StatelessWidget {
  const LocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DentalNavigationBar(),
      body: const Center(child: Text('Find our clinics near you.')),
    );
  }
}
