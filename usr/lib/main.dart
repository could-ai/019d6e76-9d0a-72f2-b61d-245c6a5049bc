import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ThesisManagerApp());
}

class ThesisManagerApp extends StatelessWidget {
  const ThesisManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'B-Tech Report Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E3A8A), // Academic Blue
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
