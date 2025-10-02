import 'package:flutter/material.dart';
import '../widgets/navigation_bar.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DentalNavigationBar(),
      body: const Center(
        child: Text('We are a team of dedicated dental professionals.'),
      ),
    );
  }
}
