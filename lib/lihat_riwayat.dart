import 'package:flutter/material.dart';

class RiwayatTindakLanjutPage extends StatelessWidget {
  const RiwayatTindakLanjutPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Contoh data riwayat seperti di screenshot
    final List<Map<String, String>> riwayat = [
      {
        'admin': 'Admin 1',
        'tanggal': '2025-11-13',
        'keterangan':
            'Telah berkoordinasi dengan kepolisian setempat. Kasus ditangani oleh Polsek.',
      },
      {
        'admin': 'Sistem',
        'tanggal': '2025-11-13',
        'keterangan': 'Laporan diterima.',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Lihat Riwayat Tindak Lanjut",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: riwayat.length,
        itemBuilder: (context, index) {
          final item = riwayat[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Baris atas: Admin + Tanggal
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item['admin']!,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: item['admin'] == "Sistem"
                            ? Colors.blueGrey
                            : Colors.blue,
                      ),
                    ),
                    Text(
                      item['tanggal']!,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // Isi Keterangan
                Text(
                  item['keterangan']!,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.4,
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
