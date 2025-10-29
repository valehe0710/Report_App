import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reportes'),
        backgroundColor: const Color.fromARGB(255, 21, 49, 142),
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // usuario y tiempo
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 21, 49, 142),
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Ana Garcia',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Centro de la ciudad • Hace 2 horas',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Imagen del reporte
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.camera, size: 50, color: Colors.grey),
                    SizedBox(height: 10),
                    Text(
                      'Imagen del reporte',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // problema
              const Text(
                'Problema con el alumbrado publico en la calle principal',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),

              // acciones
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Me gusta presionado')),
                      );
                    },
                    icon: const Icon(Icons.thumb_up),
                    label: const Text('Me gusta'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color.fromARGB(255, 21, 49, 142),
                      side: const BorderSide(color: Color.fromARGB(255, 21, 49, 142)),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Comentar presionado')),
                      );
                    },
                    icon: const Icon(Icons.comment),
                    label: const Text('Comentar'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color.fromARGB(255, 21, 49, 142),
                      side: const BorderSide(color: Color.fromARGB(255, 21, 49, 142)),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Compartir presionado')),
                      );
                    },
                    icon: const Icon(Icons.share),
                    label: const Text('Compartir'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color.fromARGB(255, 21, 49, 142),
                      side: const BorderSide(color: Color.fromARGB(255, 21, 49, 142)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              //volver
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 21, 49, 142),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  ),
                  child: const Text('Volver al Menu'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}