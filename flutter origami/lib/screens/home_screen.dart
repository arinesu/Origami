import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../models/boat.dart';
import '../widgets/boat_marker.dart';
import 'create_boat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String humorHoje = 'Calmo';

  Future<void> abrirCriarBarco() async {
    final novoBarco = await Navigator.push<Boat>(
      context,
      MaterialPageRoute<Boat>(
        builder: (context) => const CreateBoatScreen(),
      ),
    );

    if (!mounted) return;

    if (novoBarco != null) {
      setState(() {
        mockBoats.add(novoBarco);
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('O teu barco foi lançado ao mar!')),
      );
    }
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
        child: Stack(
          children: [
            //espirito guia canto superior esquerdo
            Positioned(
              top: 50,
              left: 20,
              child: CircleAvatar(
                backgroundColor: Colors.white24,
                child: IconButton(
                  icon: const Icon(Icons.pets, color: Colors.white),
                  onPressed: () {},
                ),
              ),
            ),
            // barcos espalhados pelo mapa
            for (final boat in mockBoats)
              Positioned(
                top: boat.top,
                left: boat.left,
                child: BoatMarker(
                  boat: boat,
                  onAtualizar: () => setState(() {}),
                ),
              ),
          ],
        ),
      ),
    );
  }
}