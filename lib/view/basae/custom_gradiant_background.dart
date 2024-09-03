import 'package:flutter/material.dart';

customGradiantBackground() {
  return const BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xFFFFFFFF), Color.fromARGB(255, 179, 196, 211)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );
}
