import 'package:flutter/material.dart';

// Kita akan menggunakan class ini sebagai List Page (Laporan)
class LaporanAdminPage extends StatelessWidget {
  const LaporanAdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Judul 'Laporan' di kiri atas
        title: const Text(
          'Laporan',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        toolbarHeight: 80, // Memberi ruang ekstra untuk tampilan yang lebih lega
        automaticallyImplyLeading: false, // Menghilangkan tombol kembali
      ),
      body: Column(
        children: [
          // Bagian Search Bar dan Filter
          _buildSearchBar(context),

          // Daftar Laporan (List)
          const Expanded(
            child: _ReportList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          // Kolom Input Pencarian
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari ID atau Judul Laporan',
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                suffixIcon: const Icon(Icons.search, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[100],
              ),
            ),
          ),
          
          const SizedBox(width: 8),

          // Tombol Filter (Ikon Corong)
          InkWell(
            onTap: () {
              // TODO: Tampilkan dialog atau halaman filter
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Filter Laporan ditekan')),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: const Icon(Icons.filter_list, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}

// ====================================================================
// Widget untuk Daftar Laporan
// ====================================================================
class _ReportList extends StatelessWidget {
  const _ReportList();

  // Data dummy laporan (berdasarkan gambar)
  final List<Map<String, dynamic>> reports = const [
    {'id': 'LP-003', 'title': 'Jalan Berlubang Parah di Depan SMA 8 Gowa', 'category': 'Infrastruktur', 'status': 'Baru', 'reporter': 'Ahmad S.', 'date': '2025-11-14'},
    {'id': 'LP-002', 'title': 'Trotoar Rusak Parah depan Kampus Teknik', 'category': 'Kebersihan', 'status': 'Sedang Diproses', 'reporter': 'Budi H.', 'date': '2025-10-14'},
    {'id': 'LP-001', 'title': 'Penumpukan Sampah di Pasar', 'category': 'Keamanan', 'status': 'Selesai', 'reporter': 'Citra H.', 'date': '2025-10-9'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemCount: reports.length,
      separatorBuilder: (context, index) => const Divider(height: 1, color: Colors.grey),
      itemBuilder: (context, index) {
        final report = reports[index];
        return _buildReportItem(context, report);
      },
    );
  }

  Widget _buildReportItem(BuildContext context, Map<String, dynamic> report) {
    
    // Tentukan warna status
    Color getStatusColor(String status) {
      switch (status) {
        case 'Baru': return Colors.red;
        case 'Sedang Diproses': return Colors.orange;
        case 'Selesai': return Colors.green;
        default: return Colors.grey;
      }
    }

    // Fungsi pembangun Chip (label kategori/status)
    Widget buildChip(String text, Color color) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          text,
          style: TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.w500),
        ),
      );
    }
    
    final statusColor = getStatusColor(report['status']);
    
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              // LP-003
              TextSpan(text: '${report['id']} - ', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey.shade700)),
              // Judul Laporan
              TextSpan(text: report['title'], style: const TextStyle(fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Kategori
              buildChip(report['category'], Colors.blue),
              const SizedBox(width: 8),
              // Status
              buildChip(report['status'], statusColor),
              const SizedBox(width: 8),
            ],
          ),
          const SizedBox(height: 4),
          // Reporter dan Tanggal
          Text(
            '${report['reporter']} • ${report['date']}',
            style: const TextStyle(fontSize: 13, color: Colors.grey),
          ),
        ],
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {
        // TODO: Navigasi ke Halaman Detail Laporan ('/lihatLaporan')
        // Navigator.pushNamed(context, '/lihatLaporan', arguments: report['id']);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Melihat detail laporan ${report['id']}')),
        );
      },
    );
  }
}