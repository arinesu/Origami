import 'package:flutter/material.dart';

class OceanBackground extends StatelessWidget {
  final Widget child;

  const OceanBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFF1A2238),
      child: child,
    );
  }
}