import 'package:flutter/material.dart';

class TentangAplikasiPage extends StatelessWidget {
  const TentangAplikasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tentang Aplikasi",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            // LOGO APLIKASI
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade200,
                image: const DecorationImage(
                  image: AssetImage("assets/logo.png"), // <-- ganti logomu
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // NAMA APLIKASI
            const Text(
              "LaporAja",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            // VERSI APLIKASI
            const Text(
              "Versi 1.0.0",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 20),

            // PENJELASAN APLIKASI
            const Text(
              "Aplikasi LaporAja merupakan platform pelaporan masyarakat "
              "yang memudahkan warga untuk mengirimkan aduan terkait infrastruktur, "
              "kebersihan, keamanan, dan pelayanan publik lainnya. "
              "Setiap laporan akan diteruskan ke instansi terkait untuk ditindaklanjuti.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 30),

            Divider(color: Colors.grey.shade300),

            const SizedBox(height: 15),

            // INFORMASI DEVELOPER (opsional)
            const Text(
              "Dikembangkan oleh:\nTim Pengembang Kota Cerdas",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                height: 1.4,
              ),
            ),

            const Spacer(),

            // COPYRIGHT
            Text(
              "© 2025 LaporAja",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
