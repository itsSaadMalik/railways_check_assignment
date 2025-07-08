import 'package:flutter/material.dart';

class AppBackgroundGradient extends StatelessWidget {
  const AppBackgroundGradient({super.key, required this.body});
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 167, 167, 167),
            Color.fromARGB(255, 247, 247, 247),
            Color(0xFFFFFFFF),
          ],
        ),
      ),
      child: SafeArea(child: body),
    );
  }
}
