import 'package:flutter/material.dart';

class KebijakanPrivasiPage extends StatelessWidget {
  const KebijakanPrivasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Kebijakan Privasi",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul Pembuka
            const Text(
              "Kebijakan Privasi Aplikasi",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              "Kebijakan privasi ini menjelaskan bagaimana kami mengumpulkan, "
              "menggunakan, dan melindungi data pribadi pengguna dalam aplikasi ini. "
              "Dengan menggunakan aplikasi ini, Anda menyetujui kebijakan privasi berikut:",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),

            const SizedBox(height: 22),

            // Bagian 1
            const Text(
              "1. Informasi yang Kami Kumpulkan",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "- Informasi identitas dasar seperti nama dan nomor telepon.\n"
              "- Informasi lokasi laporan yang Anda kirimkan.\n"
              "- Foto atau media yang Anda unggah sebagai bukti laporan.\n"
              "- Data teknis perangkat untuk tujuan keamanan dan peningkatan layanan.",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),

            const SizedBox(height: 20),

            // Bagian 2
            const Text(
              "2. Penggunaan Informasi",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Informasi yang dikumpulkan digunakan untuk:\n"
              "- Memproses dan menindaklanjuti laporan Anda.\n"
              "- Menghubungi Anda terkait perkembangan laporan.\n"
              "- Meningkatkan kualitas layanan aplikasi.\n"
              "- Keperluan analisis dan keamanan sistem.",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),

            const SizedBox(height: 20),

            // Bagian 3
            const Text(
              "3. Perlindungan Data",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Kami berkomitmen melindungi data pengguna dengan menerapkan langkah-langkah "
              "keamanan teknis dan administratif. Data Anda tidak akan dibagikan kepada "
              "pihak ketiga tanpa persetujuan, kecuali untuk kebutuhan pemrosesan laporan "
              "oleh instansi berwenang.",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),

            const SizedBox(height: 20),

            // Bagian 4
            const Text(
              "4. Hak Pengguna",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Sebagai pengguna, Anda berhak untuk:\n"
              "- Mengakses dan memperbarui informasi pribadi Anda.\n"
              "- Menghapus akun dan data yang tersimpan.\n"
              "- Mengajukan pertanyaan terkait kebijakan privasi.",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),

            const SizedBox(height: 20),

            // Bagian 5
            const Text(
              "5. Perubahan Kebijakan",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Kami dapat memperbarui kebijakan privasi ini sewaktu-waktu. "
              "Setiap perubahan akan diinformasikan melalui aplikasi ini.",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),

            const SizedBox(height: 20),

            // Bagian 6
            const Text(
              "6. Kontak",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Jika Anda memiliki pertanyaan mengenai kebijakan privasi ini, "
              "silakan hubungi kami melalui email: support@laporaja.com",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),

            const SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
