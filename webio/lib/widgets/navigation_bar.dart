import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';

class DentalNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const DentalNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return AppBar(
      title: Row(
        children: [
          Image.asset('assets/images/test_photo.jpg', height: 30, width: 30),
          const SizedBox(width: 8),
          const Text('Dental Clinic'),
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      actions: [
        TextButton(onPressed: () => Navigator.pushNamed(context, '/'), child: Text('Home', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary))),
        TextButton(onPressed: () => Navigator.pushNamed(context, '/services'), child: Text('Services', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary))),
        TextButton(onPressed: () => Navigator.pushNamed(context, '/meet-the-team'), child: Text('Meet the Team', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary))),
        TextButton(onPressed: () => Navigator.pushNamed(context, '/testimonials'), child: Text('Testimonials', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary))),
        TextButton(onPressed: () => Navigator.pushNamed(context, '/locations'), child: Text('Locations', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary))),
        TextButton(onPressed: () => Navigator.pushNamed(context, '/products'), child: Text('Products', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary))),
        TextButton(onPressed: () => Navigator.pushNamed(context, '/contact'), child: Text('Contact Us', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary))),
        Switch(value: themeProvider.themeMode == ThemeMode.dark, onChanged: (value) {
          themeProvider.toggleTheme();
        })
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
