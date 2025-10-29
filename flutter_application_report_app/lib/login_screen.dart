import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_input.dart';
import 'menu_screen.dart'; // Cambiado de data_screen.dart
import 'user_manager.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Inicio de Sesion",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              CustomInput(
                labelText: 'Nombre',
                prefixIcon: Icons.person,
                controller: _nameController,
              ),
              const SizedBox(height: 16),

              CustomInput(
                labelText: 'Contraseña',
                prefixIcon: Icons.lock,
                obscureText: true,
                controller: _passwordController,
              ),
              const SizedBox(height: 30),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "¿Olvidaste tu contraseña?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 21, 49, 142),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              BotonPersonalizado(
                texto: 'Iniciar Sesion',
                onPressed: () {
                  final name = _nameController.text.trim();
                  final password = _passwordController.text.trim();

                  if (name.isEmpty || password.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Por favor, ingresa nombre y contraseña')),
                    );
                    return;
                  }

                  if (UserManager.loginUser(name, password)) {
                    Navigator.pushReplacement( // Cambiado a pushReplacement
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MenuScreen(),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Usuario no encontrado o datos incorrectos. Registrarse primero.')),
                    );
                  }
                },
                colorFondo: const Color.fromARGB(255, 21, 49, 142),
                colorTexto: Colors.white,
                paddingHorizontal: 25,
                paddingVertical: 12,
              ),
              const SizedBox(height: 20),

              BotonPersonalizado(
                texto: "Volver",
                onPressed: () {
                  Navigator.pop(context);
                },
                colorFondo: Colors.white,
                colorTexto: const Color.fromARGB(255, 21, 49, 142),
                colorBorde: const Color.fromARGB(255, 21, 49, 142),
                paddingHorizontal: 40,
                paddingVertical: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}