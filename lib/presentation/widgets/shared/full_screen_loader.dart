import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  Stream<String> getLoadingMessages() {
    final List<String> messages = [
      'Cargando películas',
      'Comprando palomitas',
      'Cargando populares',
      'Colocando cd en proyector',
      'esto está tardando más de lo esperando',
    ];

    return Stream.periodic(const Duration(milliseconds: 1200), (step) {
      return messages[step];
    }).take(messages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Espere plis"),
          const SizedBox(height: 10),
          const CircularProgressIndicator(),
          const SizedBox(height: 10),

          StreamBuilder( // se encarga de cerrar automáticamente el stream
            stream: getLoadingMessages(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const Text('Cargando');
              return Text(snapshot.data!);
            },
          ),
        ],
      ),
    );
  }
}
