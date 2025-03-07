import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Color(0xFF1F1D2B),
  title: Text("Podkes"),
  centerTitle: true,
  leading: IconButton(
    icon: Image.asset('assets/images/drawer.png'),
    onPressed: () {
      // Handle drawer open
    },
  ),
  actions: [
    IconButton(
      icon: Image.asset('assets/images/Notification.png'),
      onPressed: () {
        // Handle notification icon press
      },
    ),
  ],
),

    );
  }
}