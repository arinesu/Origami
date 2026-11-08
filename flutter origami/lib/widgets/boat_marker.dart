import 'package:flutter/material.dart';
import '../models/boat.dart';
import '../screens/boat_detail_screen.dart';

class BoatMarker extends StatelessWidget {
  final Boat boat;
  final VoidCallback onAtualizar;

  const BoatMarker({
    super.key,
    required this.boat,
    required this.onAtualizar,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: boat.cor,
        foregroundColor: Colors.black87,
        padding: const EdgeInsets.all(10),
      ),
      onPressed: () async {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BoatDetailScreen(boat: boat),
          ),
        );
        onAtualizar();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.sailing, size: 18),
          const SizedBox(width: 4),
          Text(
            boat.emocao,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}