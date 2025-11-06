// lib/main_screen.dart
import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'reports_screen.dart'; 

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Hello",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Welcome to Little Drop",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            // Botón Login
            BotonPersonalizado(
              texto: 'Login',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              colorFondo: const Color.fromARGB(255, 21, 49, 142),
              colorTexto: Colors.white,
              paddingHorizontal: 40,
              paddingVertical: 7,
            ),
            const SizedBox(height: 16),

            // Botón Sign Up
            BotonPersonalizado(
              texto: 'Sign Up',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                );
              },
              colorFondo: Colors.white,
              colorTexto: const Color.fromARGB(255, 21, 49, 142),
              colorBorde: const Color.fromARGB(255, 21, 49, 142),
              paddingHorizontal: 32,
              paddingVertical: 5,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
