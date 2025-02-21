import 'package:flutter/material.dart';

void main() {
  runApp(const MiAppBar());
}

class MiAppBar extends StatelessWidget {
  const MiAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "hola mi AppBar",
            style: TextStyle(
              color: Colors.white, // Color de la letra
              fontSize: 20,
            ),
          ),
          centerTitle: true, // Centra el título
          backgroundColor: Colors.blueAccent, // Color de fondo del AppBar
          leading: IconButton(
            icon: Icon(Icons.menu), // Ícono del leading
            onPressed: () {
              // Acción cuando se presiona el ícono
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Icono de menú presionado')),
              );
            },
          ),
        ),
        body: Center(
          child: Text('Contenido de la pantalla'),
        ),
      ),
    );
  }
}
