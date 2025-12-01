import 'package:flutter/material.dart';

class SyaratKetentuanPage extends StatelessWidget {
  const SyaratKetentuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Syarat & Ketentuan",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Syarat & Ketentuan Penggunaan Aplikasi",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 16),

            buildSectionTitle("1. Penerimaan Syarat"),
            buildSectionText(
              "Dengan menggunakan aplikasi ini, Anda dianggap telah membaca, memahami, dan menyetujui semua syarat dan ketentuan yang berlaku."
            ),

            const SizedBox(height: 12),

            buildSectionTitle("2. Penggunaan Layanan"),
            buildSectionText(
              "Anda setuju untuk menggunakan aplikasi sesuai dengan peraturan perundang-undangan yang berlaku serta tidak melakukan tindakan yang dapat merugikan pihak lain."
            ),

            const SizedBox(height: 12),

            buildSectionTitle("3. Informasi yang Diberikan"),
            buildSectionText(
              "Setiap informasi yang Anda berikan melalui aplikasi harus benar, akurat, dan dapat dipertanggungjawabkan."
            ),

            const SizedBox(height: 12),

            buildSectionTitle("4. Tanggung Jawab Pengguna"),
            buildSectionText(
              "Pengguna bertanggung jawab atas aktivitas yang dilakukan di dalam aplikasi serta menjaga kerahasiaan akun masing-masing."
            ),

            const SizedBox(height: 12),

            buildSectionTitle("5. Pembaruan Layanan"),
            buildSectionText(
              "Pengembang berhak memperbarui, mengubah, atau menghentikan sebagian atau seluruh layanan tanpa pemberitahuan sebelumnya."
            ),

            const SizedBox(height: 12),

            buildSectionTitle("6. Batasan Tanggung Jawab"),
            buildSectionText(
              "Pengembang tidak bertanggung jawab atas kerugian langsung maupun tidak langsung akibat penggunaan aplikasi."
            ),

            const SizedBox(height: 12),

            buildSectionTitle("7. Perubahan Syarat & Ketentuan"),
            buildSectionText(
              "Syarat dan ketentuan dapat berubah sewaktu-waktu. Pengguna disarankan untuk memeriksa halaman ini secara berkala."
            ),

            const SizedBox(height: 20),

            const Text(
              "Terima kasih telah menggunakan aplikasi kami.",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    );
  }

  Widget buildSectionText(String text) {
    return Text(
      text,
      style: const TextStyle(
        height: 1.5,
        fontSize: 14,
        color: Colors.black87,
      ),
    );
  }
}
