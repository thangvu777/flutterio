import 'package:flutter/material.dart';
import '../widgets/navigation_bar.dart';

class TestimonialsPage extends StatelessWidget {
  const TestimonialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DentalNavigationBar(),
      body: const Center(
        child: Text('Read what our happy patients have to say.'),
      ),
    );
  }
}
