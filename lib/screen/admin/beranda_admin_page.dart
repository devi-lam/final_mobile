import 'package:flutter/material.dart';

class BerandaAdminPage extends StatelessWidget {
  const BerandaAdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Menggunakan Safe Area untuk menghindari notch atau status bar
    return const SafeArea(
      child: Scaffold(
        // Scrollable agar konten di bawah dapat diakses
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian Header dan Background Biru
              _AdminHeader(),
              
              // Bagian Rangkuman Laporan Hari Ini (Summary Card)
              _SummarySection(),

              // Bagian Laporan Terbaru
              Padding(
                padding: EdgeInsets.fromLTRB(16, 24, 16, 8),
                child: Text(
                  'Laporan Terbaru',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              
              _LatestReportList(),
            ],
          ),
        ),
      ),
    );
  }
}

// ====================================================================
// Widget untuk Header (Halo, Nama Admin!)
// ====================================================================
class _AdminHeader extends StatelessWidget {
  const _AdminHeader();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 180, // Ketinggian background biru
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor, // Warna biru utama
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 60), // Padding atas dan samping
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Halo,',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
                Text(
                  'Nama Admin!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
            
            // Ikon Lokasi di kanan atas
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white70),
              ),
              child: Icon(
                Icons.location_on,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ====================================================================
// Widget untuk Summary Card (Rangkuman Laporan Hari Ini)
// ====================================================================
class _SummarySection extends StatelessWidget {
  const _SummarySection();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    // Posisi card ditarik ke atas, menumpang di atas background biru
    return Transform.translate(
      offset: const Offset(0, -90), 
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          width: size.width,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            children: [
              const Icon(
                Icons.description, // Ikon Laporan di atas judul
                color: Colors.white,
                size: 40,
              ),
              const SizedBox(height: 8),
              const Text(
                'Rangkuman Laporan Hari Ini',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              
              // Baris metrik
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildMetricCard(context, '1', 'Laporan Baru', Colors.cyan),
                  _buildMetricCard(context, '1', 'Laporan Diproses', Colors.orange),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMetricCard(BuildContext context, String count, String label, Color color) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color, // Warna background metrik
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            count,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

// ====================================================================
// Widget untuk Daftar Laporan Terbaru
// ====================================================================
class _LatestReportList extends StatelessWidget {
  const _LatestReportList();

  @override
  Widget build(BuildContext context) {
    // Data dummy untuk list laporan
    final List<Map<String, dynamic>> reports = [
      {'title': 'Jalan Rusak Parah di Depan SD Inpres Tamalanrea', 'category': 'Infrastruktur', 'status': 'Diproses'},
      {'title': 'Jalan Rusak Parah di Depan SD Inpres Tamalanrea', 'category': 'Infrastruktur', 'status': 'Diproses'},
      {'title': 'Sampah Menumpuk di Depan Pasar Panakukkang', 'category': 'Kebersihan', 'status': 'Selesai'},
      {'title': 'Sampah Menumpuk di Depan Pasar Panakukkang', 'category': 'Kebersihan', 'status': 'Selesai'},
    ];

    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(), // Menonaktifkan scroll di list ini
      shrinkWrap: true, // Memastikan list hanya memakai ruang yang diperlukan
      itemCount: reports.length,
      itemBuilder: (context, index) {
        final report = reports[index];
        return _buildReportItem(context, report['title'], report['category'], report['status']);
      },
    );
  }

  Widget _buildReportItem(BuildContext context, String title, String category, String status) {
    Color statusColor;
    switch (status) {
      case 'Diproses':
        statusColor = Colors.orange;
        break;
      case 'Selesai':
        statusColor = Colors.green;
        break;
      default:
        statusColor = Colors.grey;
    }

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      elevation: 1,
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Row(
            children: [
              _buildChip(category, Colors.blue),
              const SizedBox(width: 8),
              _buildChip(status, statusColor),
              const SizedBox(width: 8),
              const Text('• 12 Mar', style: TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          // TODO: Navigasi ke Detail Laporan
        },
      ),
    );
  }
  
  // Fungsi pembangun Chip (label kategori/status)
  Widget _buildChip(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: 12),
      ),
    );
  }
}