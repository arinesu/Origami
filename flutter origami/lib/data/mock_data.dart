import 'package:flutter/material.dart';
import '../models/boat.dart';

List<Boat> mockBoats = [
  const Boat(
    id: 'b1',
    texto: 'Às vezes, o futuro parece um oceano sem horizonte. O vento sopra forte demais e tenho medo que o meu pequeno barco de papel não aguente a tempestade invisível que trago no peito.',
    emocao: 'Ansiedade',
    data: 'Hoje, 14:30',
    cor: Color(0xFFD1C4E9),
    top: 140,
    left: 60,
    meuBarco: false,
  ),
  const Boat(
    id: 'b2',
    texto: 'Por mais longa que seja a noite, o sol acaba sempre por tocar a superfície da água. Guardo a certeza de que a maré há de virar e levar-me exatamente para onde preciso de estar.',
    emocao: 'Esperança',
    data: 'Ontem',
    cor: Color(0xFFFFF59D),
    top: 260,
    left: 220,
    meuBarco: false,
  ),
  const Boat(
    id: 'b3',
    texto: 'Há dias em que a saudade pesa mais do que o silêncio. Fico a ver as ondas que vão e vêm, onde já fui feliz e os abraços que o tempo levou com a corrente.',
    emocao: 'Melancolia',
    data: 'Há 2 dias',
    cor: Color(0xFF90CAF9),
    top: 390,
    left: 90,
    meuBarco: false,
  ),
  const Boat(
    id: 'b4',
    texto: 'Aprendi a fechar os olhos, a respirar fundo e a deixar-me flutuar.',
    emocao: 'Paz',
    data: 'Hoje, 10:15',
    cor: Color(0xFFA5D6A7),
    top: 190,
    left: 160,
    meuBarco: true,
  ),
];

List<Boat> barcosGuardados = [
  mockBoats[1],
];

List<Boat> barcosArquivados = [];