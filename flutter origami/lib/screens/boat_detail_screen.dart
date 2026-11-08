import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../models/boat.dart';

class BoatDetailScreen extends StatelessWidget {
  final Boat boat;

  const BoatDetailScreen({
    super.key,
    required this.boat,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF8F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFBF8F2),
        title: Text('Barco: ${boat.emocao}'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                color: boat.cor,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.sailing),
                    const SizedBox(width: 8),
                    Text(
                      'Emoção: ${boat.emocao} • ${boat.data}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Text(
                boat.texto,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xFF1A2238),
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      if (!barcosGuardados.contains(boat)) {
                        barcosGuardados.add(boat);
                      }
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Barco guardado'),
                        ),
                      );
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.favorite_border),
                    label: const Text('Guardar'),
                  ),
                  const SizedBox(width: 12),
                  TextButton.icon(
                    onPressed: () {
                      if (!barcosArquivados.contains(boat)) {
                        barcosArquivados.add(boat);
                      }
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Barco movido para os Arquivados.'),
                        ),
                      );
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.archive_outlined),
                    label: const Text('Arquivar'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Devolver ao Mar (Voltar)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}