import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';

class DentalNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const DentalNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final theme = Theme.of(context);

    // Use a color that stands out from the background
    final appBarColor = theme.cardColor;
    // Determine the best text color based on the app bar's brightness
    final brightness = ThemeData.estimateBrightnessForColor(appBarColor);
    final textColor = brightness == Brightness.dark ? Colors.white : Colors.black;

    final buttonStyle = TextButton.styleFrom(foregroundColor: textColor);

    return AppBar(
      title: Row(
        children: [
          Image.asset('assets/images/test_photo.png', height: 30, width: 30),
          const SizedBox(width: 8),
          const Text('Dental Clinic'),
        ],
      ),
      backgroundColor: appBarColor,
      foregroundColor: textColor, // Apply the text color to the title and default icon color
      actions: [
        TextButton(style: buttonStyle, onPressed: () => Navigator.pushNamed(context, '/'), child: const Text('Home')),
        TextButton(style: buttonStyle, onPressed: () => Navigator.pushNamed(context, '/services'), child: const Text('Services')),
        TextButton(style: buttonStyle, onPressed: () => Navigator.pushNamed(context, '/meet-the-team'), child: const Text('Meet the Team')),
        TextButton(style: buttonStyle, onPressed: () => Navigator.pushNamed(context, '/testimonials'), child: const Text('Testimonials')),
        TextButton(style: buttonStyle, onPressed: () => Navigator.pushNamed(context, '/locations'), child: const Text('Locations')),
        TextButton(style: buttonStyle, onPressed: () => Navigator.pushNamed(context, '/products'), child: const Text('Products')),
        TextButton(style: buttonStyle, onPressed: () => Navigator.pushNamed(context, '/contact'), child: const Text('Contact Us')),
        Row(
          children: [
            Icon(Icons.nightlight_round, color: textColor),
            Switch(
              value: themeProvider.themeMode == ThemeMode.dark, 
              onChanged: (value) {
                themeProvider.toggleTheme();
              }
            ),
            const SizedBox(width: 8), // Add some spacing to the edge
          ],
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
