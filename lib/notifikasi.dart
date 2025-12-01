import 'package:flutter/material.dart';

class NotifikasiPage extends StatelessWidget {
  const NotifikasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Contoh data notifikasi
    final List<Map<String, String>> notifikasi = [
      {
        "judul": "Aduan Sampah Menumpuk di Depan Pasar Panakukkang",
        "deskripsi":
            "Aduan Anda telah diselesaikan oleh petugas. Silakan beri nilai layanan kami.",
        "tanggal": "2025-11-13 • 09:41"
      },
      {
        "judul": "Perbaikan Jalan Berlubang",
        "deskripsi": "Laporan Anda sedang diproses oleh dinas terkait.",
        "tanggal": "2025-11-12 • 14:20"
      },
      {
        "judul": "Gangguan Lampu Jalan",
        "deskripsi": "Laporan Anda diterima dan akan segera ditindaklanjuti.",
        "tanggal": "2025-11-11 • 19:03"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notifikasi",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: notifikasi.length,
        itemBuilder: (context, index) {
          final item = notifikasi[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.03),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Judul Notifikasi
                Text(
                  item['judul']!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                // Deskripsi notif
                Text(
                  item['deskripsi']!,
                  style: const TextStyle(fontSize: 14, height: 1.4),
                ),

                const SizedBox(height: 10),

                // Tanggal/Waktu
                Text(
                  item['tanggal']!,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
