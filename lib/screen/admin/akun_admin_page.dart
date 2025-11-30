import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AkunAdminPage extends StatelessWidget {
  const AkunAdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Halaman Akun Admin',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          // Menampilkan email pengguna saat ini
          Text('Email: ${FirebaseAuth.instance.currentUser?.email ?? 'N/A'}'),
        ],
      ),
    );
  }
}
