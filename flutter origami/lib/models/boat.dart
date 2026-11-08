import 'package:flutter/material.dart';

class Boat {
  final String id;
  final String texto;
  final String emocao;
  final String data;
  final Color cor;
  final double top;
  final double left;
  final bool meuBarco;

  const Boat({
    required this.id,
    required this.texto,
    required this.emocao,
    required this.data,
    required this.cor,
    required this.top,
    required this.left,
    required this.meuBarco,
  });
}