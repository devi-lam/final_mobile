import 'package:flutter/material.dart';

class DetailLaporanPage extends StatelessWidget {
  const DetailLaporanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Lihat Laporan'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'DETAIL LAPORAN',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text('Senin, 12 Maret 2025'),
            const SizedBox(height: 16),

            // Gambar Laporan
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/sample_lubang_jalan.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),

            // Lokasi Laporan
            _buildLockedField(
              label: 'Lokasi Laporan',
              value:
                  'Jl. Malino No.Km.6, Romang Lompoa, Kec. Bontomarannu, Kabupaten Gowa, Sulawesi Selatan 92171, Indonesia',
            ),
            const SizedBox(height: 16),

            // Detail Lokasi
            _buildLockedField(
              label: 'Detail Lokasi Laporan',
              value: 'Trotoar di depan Balai Kota',
            ),
            const SizedBox(height: 16),

            // Deskripsi
            _buildLockedField(
              label: 'Deskripsi Laporan',
              value:
                  'Jalan berlubang cukup dalam di depan Toko Sinar Jaya, menyebabkan kendaraan sering melambat dan hampir terjadi kecelakaan. Mohon segera dilakukan perbaikan sebelum menimbulkan bahaya lebih besar.',
              maxLines: 4,
            ),
            const SizedBox(height: 16),

            // Kategori
            _buildLockedField(
              label: 'Kategori Laporan',
              value: 'Infrastruktur',
            ),
            const SizedBox(height: 16),

            // Jenis Laporan
            _buildLockedField(
              label: 'Jenis Laporan',
              value: 'Privat',
            ),
            const SizedBox(height: 32),

            // Tombol
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Lihat Riwayat',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLockedField({
    required String label,
    required String value,
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  value,
                  maxLines: maxLines,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Icon(Icons.lock, size: 20, color: Colors.grey),
            ],
          ),
        ),
      ],
    );
  }
}
