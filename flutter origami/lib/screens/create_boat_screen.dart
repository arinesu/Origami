import 'package:flutter/material.dart';
import '../models/boat.dart';

class CreateBoatScreen extends StatefulWidget {
  const CreateBoatScreen({super.key});

  @override
  State<CreateBoatScreen> createState() => _CreateBoatScreenState();
}

class _CreateBoatScreenState extends State<CreateBoatScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController textoController = TextEditingController();
  bool barcoDobrado = false;
  String? emocaoSelecionada = 'Esperança';

  @override
  void dispose() {
    textoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/map_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/paper_texture.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.blue.shade300, width: 2),
              ),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (!barcoDobrado) ...[
                      const Text(
                        'Fold your thoughts into this paper...',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'serif',
                          color: Color(0xFF1A2238),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: textoController,
                        maxLines: 8,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Escreve aqui o teu desabafo...',
                        ),
                        validator: (v) => v == null || v.trim().isEmpty
                            ? 'Escreve algo antes de dobrar.'
                            : null,
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF283350),
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            setState(() => barcoDobrado = true);
                          }
                        },
                        child: const Text('Fold'),
                      ),
                    ] else ...[
                      const Icon(Icons.sailing, size: 80, color: Color(0xFF1A2238)),
                      const SizedBox(height: 20),
                      DropdownButtonFormField<String>(
                        value: emocaoSelecionada,
                        items: const [
                          DropdownMenuItem(value: 'Esperança', child: Text('Esperança')),
                          DropdownMenuItem(value: 'Paz', child: Text('Paz')),
                          DropdownMenuItem(value: 'Ansiedade', child: Text('Ansiedade')),
                        ],
                        onChanged: (val) => setState(() => emocaoSelecionada = val),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1A2238),
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          final novo = Boat(
                            id: DateTime.now().toString(),
                            texto: textoController.text.trim(),
                            emocao: emocaoSelecionada ?? 'Esperança',
                            data: 'Agora',
                            cor: Colors.amber.shade200,
                            top: 250,
                            left: 150,
                            meuBarco: true,
                          );
                          Navigator.pop(context, novo);
                        },
                        child: const Text('Set Sail'),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}