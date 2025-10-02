import 'package:flutter/material.dart';
import '../widgets/navigation_bar.dart';

class MeetTheTeamPage extends StatelessWidget {
  const MeetTheTeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DentalNavigationBar(),
      body: const Center(
        child: Text('Meet our team of dedicated professionals.'),
      ),
    );
  }
}
