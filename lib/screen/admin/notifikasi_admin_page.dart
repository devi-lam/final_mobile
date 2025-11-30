import 'package:flutter/material.dart';

class NotifikasiAdminPage extends StatelessWidget {
  const NotifikasiAdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Halaman Notifikasi Admin',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.orange),
      ),
    );
  }
}