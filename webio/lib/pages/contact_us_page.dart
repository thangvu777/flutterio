import 'package:flutter/material.dart';
import '../widgets/navigation_bar.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DentalNavigationBar(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Email: contact@dentalclinic.com'),
            Text('Phone: 123-456-7890'),
          ],
        ),
      ),
    );
  }
}
