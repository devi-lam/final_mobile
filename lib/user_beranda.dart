import 'package:flutter/material.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: "LaporanKu"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifikasi"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Akun"),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Halo,", style: TextStyle(fontSize: 18)),
                      Text(
                        "Nama User!",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.location_on, color: Colors.blue, size: 30),
                  )
                ],
              ),

              const SizedBox(height: 20),

              // Big Blue Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const Icon(Icons.campaign, size: 40, color: Colors.white),
                    const SizedBox(height: 10),
                    const Text(
                      "Ada Masalah? Laporkan!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Aduan Anda membantu menciptakan lingkungan yang lebih baik.",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text("BUAT ADUAN BARU"),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                "Status LaporanKu",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),

              Row(
                children: [
                  buildStatusCard("1", "Diproses", Colors.amber),
                  const SizedBox(width: 10),
                  buildStatusCard("1", "Selesai", Colors.green),
                  const SizedBox(width: 10),
                  buildStatusCard("1", "Ditolak", Colors.red),
                ],
              ),

              const SizedBox(height: 25),

              const Text(
                "Laporan Terbaru",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),

              buildReportItem(
                title: "Jalan Rusak Parah di Depan SD Inpres Tamalanrea",
                category: "Infrastruktur",
                status: "Diproses",
                statusColor: Colors.amber,
                date: "12 Mar",
              ),
              const SizedBox(height: 10),

              buildReportItem(
                title: "Sampah Menumpuk di Depan Pasar Panakkukang",
                category: "Kebersihan",
                status: "Selesai",
                statusColor: Colors.green,
                date: "12 Mar",
              ),
              const SizedBox(height: 10),

              buildReportItem(
                title: "Tumpahan Oli di Jalan Raya",
                category: "Lainnya",
                status: "Ditolak",
                statusColor: Colors.red,
                date: "12 Mar",
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ---- Widget Builder -----

  Widget buildStatusCard(String count, String label, Color color) {
      final Color bg = color.withOpacity(0.1);
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(15),
          border: Border(left: BorderSide(color: color, width: 5)),
        ),
        child: Column(
          children: [
            Text(
              count,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: color),
            ),
            const SizedBox(height: 5),
            Text(
              label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: color),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildReportItem({
    required String title,
    required String category,
    required String status,
    required Color statusColor,
    required String date,
  }) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 3))
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),

                Row(
                  children: [
                    // Category chip
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(category, style: const TextStyle(color: Colors.blue)),
                    ),
                    const SizedBox(width: 10),

                    Text(
                      "• $status",
                      style: TextStyle(color: statusColor, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 10),

                    Text(date, style: const TextStyle(color: Colors.grey)),
                  ],
                )
              ],
            ),
          ),

          const Icon(Icons.arrow_forward_ios, size: 18),
        ],
      ),
    );
  }
}

