import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../models/boat.dart';
import '../widgets/boat_card.dart';
import 'boat_detail_screen.dart';

class SafeHarborScreen extends StatefulWidget {
  final String nickname;

  const SafeHarborScreen({
    super.key,
    required this.nickname,
  });

  @override
  State<SafeHarborScreen> createState() => _SafeHarborScreenState();
}

class _SafeHarborScreenState extends State<SafeHarborScreen> {
  int abaSelecionada = 0;

  List<Boat> obterListaAtual() {
    if (abaSelecionada == 0) {
      return barcosGuardados;
    } else if (abaSelecionada == 1) {
      return mockBoats.where((b) => b.meuBarco).toList();
    } else {
      return barcosArquivados;
    }
  }

  @override
  Widget build(BuildContext context) {
    final listaApresentada = obterListaAtual();

    return Scaffold(
      backgroundColor: const Color(0xFF1A2238),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A2238),
        foregroundColor: Colors.white,
        title: const Text('Porto Seguro'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.sailing,
                  size: 40,
                  color: Color(0xFFFFF59D),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.nickname,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Navegador Anónimo',
                      style: TextStyle(color: Colors.white70, fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: abaSelecionada == 0
                        ? Colors.amber.shade200
                        : const Color(0xFF283350),
                    foregroundColor:
                    abaSelecionada == 0 ? Colors.black : Colors.white,
                  ),
                  onPressed: () {
                    setState(() => abaSelecionada = 0);
                  },
                  child: const Text('Guardados'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: abaSelecionada == 1
                        ? Colors.amber.shade200
                        : const Color(0xFF283350),
                    foregroundColor:
                    abaSelecionada == 1 ? Colors.black : Colors.white,
                  ),
                  onPressed: () {
                    setState(() => abaSelecionada = 1);
                  },
                  child: const Text('Meus Barcos'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: abaSelecionada == 2
                        ? Colors.amber.shade200
                        : const Color(0xFF283350),
                    foregroundColor:
                    abaSelecionada == 2 ? Colors.black : Colors.white,
                  ),
                  onPressed: () {
                    setState(() => abaSelecionada = 2);
                  },
                  child: const Text('Arquivados'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: listaApresentada.isEmpty
                  ? const Center(
                child: Text(
                  'Ainda não existem barcos nesta secção.',
                  style: TextStyle(color: Colors.white70),
                ),
              )
                  : GridView.builder(
                itemCount: listaApresentada.length,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemBuilder: (context, index) {
                  final barco = listaApresentada[index];
                  return BoatCard(
                    boat: barco,
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              BoatDetailScreen(boat: barco),
                        ),
                      );
                      setState(() {});
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}