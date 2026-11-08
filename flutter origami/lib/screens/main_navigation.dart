import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'safe_harbor_screen.dart';

class MainNavigation extends StatefulWidget {
  final String nickname;

  const MainNavigation({
    super.key,
    required this.nickname,
  });

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    final paginas = [
      const HomeScreen(),
      SafeHarborScreen(nickname: widget.nickname),
    ];

    return Scaffold(
      body: paginas[indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF121829),
        selectedItemColor: Colors.amber.shade200,
        unselectedItemColor: Colors.white54,
        currentIndex: indiceAtual,
        onTap: (novoIndice) {
          setState(() {
            indiceAtual = novoIndice;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Oceano',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.anchor),
            label: 'Porto Seguro',
          ),
        ],
      ),
    );
  }
}