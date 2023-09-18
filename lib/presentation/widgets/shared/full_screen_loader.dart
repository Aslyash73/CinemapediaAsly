import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
   FullScreenLoader({super.key});

  final messages = <String>[
    'Cargando peliculas',
    'Comprando palomitas de maiz',
    'Mi abuala en tanga',
    'LLamando a mi novio',
    'Yo mero...',
    'Esto esta tardando mas de lo esperado :(',
  
    ];

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Espere un momento, por favor'),
          SizedBox(height: 10),
          CircularProgressIndicator(strokeWidth: 2)
        ],
      ),
    );
  }
}
