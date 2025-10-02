import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';
import 'pages/meet_the_team_page.dart';
import 'pages/contact_us_page.dart';
import 'pages/products_page.dart';
import 'pages/locations_page.dart';
import 'pages/services_page.dart';
import 'pages/testimonials_page.dart';
import 'providers/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

// Custom page transitions builder with no animation
class NoAnimationPageTransitionsBuilder extends PageTransitionsBuilder {
  const NoAnimationPageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child; // Instantly return the child widget without any transition
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const pageTransitionsTheme = PageTransitionsTheme(
      builders: {
        TargetPlatform.android: NoAnimationPageTransitionsBuilder(),
        TargetPlatform.iOS: NoAnimationPageTransitionsBuilder(),
        TargetPlatform.windows: NoAnimationPageTransitionsBuilder(),
        TargetPlatform.macOS: NoAnimationPageTransitionsBuilder(),
        TargetPlatform.linux: NoAnimationPageTransitionsBuilder(),
        TargetPlatform.fuchsia: NoAnimationPageTransitionsBuilder(),
      },
    );

    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Dental Clinic',
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.cyan,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            cardColor: Colors.white,
            scaffoldBackgroundColor: const Color(0xFFF5F5F5),
            pageTransitionsTheme: pageTransitionsTheme,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.cyan,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            cardColor: const Color(0xFF2C2C2C),
            scaffoldBackgroundColor: const Color(0xFF121212),
            pageTransitionsTheme: pageTransitionsTheme,
          ),
          themeMode: themeProvider.themeMode,
          initialRoute: '/',
          routes: {
            '/': (context) => const HomePage(),
            '/meet-the-team': (context) => const MeetTheTeamPage(),
            '/services': (context) => const ServicesPage(),
            '/testimonials': (context) => const TestimonialsPage(),
            '/contact': (context) => const ContactUsPage(),
            '/products': (context) => const ProductsPage(),
            '/locations': (context) => const LocationsPage(),
          },
        );
      },
    );
  }
}
