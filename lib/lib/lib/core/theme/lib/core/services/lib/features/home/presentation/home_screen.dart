Enterimport 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('نور الصلاة والزكاة'),
      ),
      body: const Center(
        child: Text(
          'مرحباً بك في تطبيق نور الصلاة والزكاة',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
