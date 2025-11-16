import 'package:flutter/material.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showPassword = false;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Selamat Datang",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),

            const SizedBox(height: 20),

            // TAB LOGIN - REGISTER
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xffe6ecfa),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Text("Masuk",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => const RegisterPage()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text("Daftar",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // EMAIL
            TextField(
              decoration: InputDecoration(
                hintText: "Masukkan Email",
                filled: true,
                fillColor: const Color(0xfff0f0f0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
              ),
            ),

            const SizedBox(height: 15),

            // PASSWORD
            TextField(
              obscureText: !_showPassword,
              decoration: InputDecoration(
                hintText: "Masukkan Kata Sandi",
                filled: true,
                fillColor: const Color(0xfff0f0f0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                suffixIcon: IconButton(
                  icon: Icon(_showPassword ? Icons.visibility : Icons.visibility_off),
                  onPressed: () => setState(() => _showPassword = !_showPassword),
                ),
              ),
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Checkbox(
                  value: _rememberMe,
                  onChanged: (v) => setState(() => _rememberMe = v!),
                ),
                const Text("Ingat Saya"),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text("Lupa Kata Sandi?",
                      style: TextStyle(color: Colors.blue)),
                )
              ],
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {},
                child: const Text("Masuk",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Belum punya akun? "),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const RegisterPage()),
                    );
                  },
                  child: const Text("Buat Akun",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}






// import 'package:flutter/material.dart';

// class LoginRegisterPage extends StatefulWidget {
//   const LoginRegisterPage({super.key});

//   @override
//   State<LoginRegisterPage> createState() => _LoginRegisterPageState();
// }

// class _LoginRegisterPageState extends State<LoginRegisterPage>
//     with SingleTickerProviderStateMixin {

//   late TabController _tabController;

//   Color primaryBlue = const Color(0xFF005AC2);

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: Text(
//           "Buat Akun",
//           style: TextStyle(
//             color: primaryBlue,
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//       ),

//       body: Column(
//         children: [

//           // TAB CUSTOM STYLE
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0),
//             child: Container(
//               height: 48,
//               decoration: BoxDecoration(
//                 color: Colors.blue.shade50,
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               child: TabBar(
//                 controller: _tabController,
//                 indicator: BoxDecoration(
//                   color: primaryBlue,
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 labelColor: Colors.white,
//                 unselectedLabelColor: primaryBlue,
//                 tabs: const [
//                   Tab(text: "Login"),
//                   Tab(text: "Daftar"),
//                 ],
//               ),
//             ),
//           ),

//           const SizedBox(height: 20),

//           Expanded(
//             child: TabBarView(
//               controller: _tabController,
//               children: [
//                 _buildLoginForm(),
//                 _buildRegisterForm(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // ----------------------------- LOGIN FORM -----------------------------
//   Widget _buildLoginForm() {
//     return SingleChildScrollView(
//       padding: const EdgeInsets.all(20),
//       child: Column(
//         children: [
//           _inputBox("Masukkan Email"),
//           const SizedBox(height: 15),
//           _inputPassword("Masukkan Kata Sandi"),
//           const SizedBox(height: 10),

//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Text("Lupa Kata Sandi?", style: TextStyle(color: primaryBlue)),
//             ],
//           ),

//           const SizedBox(height: 25),
//           _blueButton("Masuk"),

//           const SizedBox(height: 20),
//           const Text("Belum punya akun? Buat Akun"),
//         ],
//       ),
//     );
//   }

//   // ----------------------------- REGISTER FORM -----------------------------
//   Widget _buildRegisterForm() {
//     return SingleChildScrollView(
//       padding: const EdgeInsets.all(20),
//       child: Column(
//         children: [
//           _inputBox("Masukkan Nama Lengkap"),
//           const SizedBox(height: 15),
//           _inputBox("Masukkan Email"),
//           const SizedBox(height: 15),
//           _inputPassword("Masukkan Kata Sandi"),
//           const SizedBox(height: 15),
//           _inputPassword("Konfirmasi Kata Sandi"),
//           const SizedBox(height: 20),

//           Row(
//             children: [
//               Checkbox(value: false, onChanged: (value) {}),
//               const Text("Ingat Saya"),
//               const Spacer(),
//               Text("Lupa Kata Sandi?", style: TextStyle(color: primaryBlue)),
//             ],
//           ),

//           const SizedBox(height: 25),
//           _blueButton("Daftar"),

//           const SizedBox(height: 20),
//           const Text("Sudah punya akun? Masuk"),
//         ],
//       ),
//     );
//   }

//   // ----------------------------- WIDGET REUSABLE -----------------------------
//   Widget _inputBox(String hint) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 15),
//       decoration: BoxDecoration(
//         color: Colors.grey.shade200,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: TextField(
//         decoration: InputDecoration(
//           border: InputBorder.none,
//           hintText: hint,
//         ),
//       ),
//     );
//   }

//   Widget _inputPassword(String hint) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 15),
//       decoration: BoxDecoration(
//         color: Colors.grey.shade200,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: TextField(
//         obscureText: true,
//         decoration: InputDecoration(
//           border: InputBorder.none,
//           hintText: hint,
//           suffixIcon: const Icon(Icons.visibility),
//         ),
//       ),
//     );
//   }

//   Widget _blueButton(String text) {
//     return Container(
//       width: double.infinity,
//       height: 50,
//       decoration: BoxDecoration(
//         color: primaryBlue,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Center(
//         child: Text(
//           text,
//           style: const TextStyle(color: Colors.white, fontSize: 16),
//         ),
//       ),
//     );
//   }
// }





















// import 'package:flutter/material.dart';

// // Fungsi utama untuk menjalankan aplikasi
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Halaman Login',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         // Untuk menggunakan warna biru yang lebih gelap pada tombol
//         // seperti pada tangkapan layar.
//         primaryColor: const Color(0xFF005AC2),
//         useMaterial3: true,
//       ),
//       home: const LoginPage(),
//     );
//   }
// }

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   // Status untuk menampilkan/menyembunyikan kata sandi
//   bool _isPasswordVisible = false;
//   // Status untuk 'Ingat Saya'
//   bool _rememberMe = false;

//   @override
//   Widget build(BuildContext context) {
//     // Mengambil warna biru primer dari tema yang mirip dengan gambar.
//     final Color primaryBlue = Theme.of(context).primaryColor;
//     // Warna yang lebih terang untuk bagian 'Daftar'
//     final Color lightBlue = primaryBlue.withOpacity(0.1);
    
//     return Scaffold(
//       // AppBar dihilangkan, diganti dengan panah kembali di body
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.only(top: 48.0, left: 24.0, right: 24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             // Tombol Kembali
//             GestureDetector(
//               onTap: () {
//                 // Tambahkan logika kembali/navigasi di sini
//                 Navigator.pop(context); 
//               },
//               child: const Icon(
//                 Icons.arrow_back,
//                 color: Colors.black,
//               ),
//             ),
            
//             const SizedBox(height: 16.0),

//             // Judul "Selamat Datang"
//             const Text(
//               'Selamat Datang',
//               style: TextStyle(
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//                 color: Color(0xFF005AC2), // Warna Biru Gelap
//               ),
//             ),

//             const SizedBox(height: 32.0),

//             // Segmented Button untuk Masuk/Daftar
//             Container(
//               height: 50.0,
//               decoration: BoxDecoration(
//                 color: lightBlue, // Warna latar belakang untuk menampung
//                 borderRadius: BorderRadius.circular(25.0),
//               ),
//               child: Row(
//                 children: <Widget>[
//                   // Tombol Masuk
//                   Expanded(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: primaryBlue, // Latar belakang Biru Solid
//                         borderRadius: BorderRadius.circular(25.0),
//                       ),
//                       alignment: Alignment.center,
//                       child: const Text(
//                         'Masuk',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16.0,
//                         ),
//                       ),
//                     ),
//                   ),
                  
//                   // Tombol Daftar
//                   Expanded(
//                     child: Center(
//                       child: Text(
//                         'Daftar',
//                         style: TextStyle(
//                           color: primaryBlue,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16.0,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 32.0),

//             // Form Field Email
//             TextFormField(
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(
//                 hintText: 'Masukkan Email',
//                 contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
//                 fillColor: Colors.grey[100],
//                 filled: true,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                   borderSide: BorderSide.none, // Menghilangkan garis tepi
//                 ),
//               ),
//             ),

//             const SizedBox(height: 16.0),

//             // Form Field Kata Sandi
//             TextFormField(
//               obscureText: !_isPasswordVisible,
//               decoration: InputDecoration(
//                 hintText: 'Masukkan Kata Sandi',
//                 contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
//                 fillColor: Colors.grey[100],
//                 filled: true,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                   borderSide: BorderSide.none,
//                 ),
//                 suffixIcon: IconButton(
//                   icon: Icon(
//                     _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
//                     color: Colors.grey,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       _isPasswordVisible = !_isPasswordVisible;
//                     });
//                   },
//                 ),
//               ),
//             ),

//             const SizedBox(height: 10.0),

//             // Bagian "Ingat Saya" dan "Lupa Kata Sandi?"
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 // Ingat Saya
//                 Row(
//                   children: [
//                     SizedBox(
//                       height: 24.0,
//                       width: 24.0,
//                       child: Checkbox(
//                         value: _rememberMe,
//                         onChanged: (bool? newValue) {
//                           setState(() {
//                             _rememberMe = newValue!;
//                           });
//                         },
//                         activeColor: primaryBlue, // Warna centang
//                         side: BorderSide(color: Colors.grey.shade400, width: 1.5), // Warna kotak
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(4.0), // Bentuk kotak
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 8.0),
//                     const Text('Ingat Saya'),
//                   ],
//                 ),

//                 // Lupa Kata Sandi?
//                 TextButton(
//                   onPressed: () {
//                     // Logika untuk Lupa Kata Sandi
//                   },
//                   child: Text(
//                     'Lupa Kata Sandi?',
//                     style: TextStyle(
//                       color: primaryBlue,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),

//             const SizedBox(height: 24.0),

//             // Tombol Masuk Utama
//             SizedBox(
//               width: double.infinity,
//               height: 50.0,
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Logika otentikasi
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: primaryBlue, // Warna biru
//                   foregroundColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   elevation: 0, // Menghilangkan bayangan
//                 ),
//                 child: const Text(
//                   'Masuk',
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 24.0),

//             // Teks "Belum punya akun?"
//             Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   const Text(
//                     'Belum punya akun? ',
//                     style: TextStyle(fontSize: 16.0),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       // Logika navigasi ke halaman Buat Akun
//                     },
//                     child: Text(
//                       'Buat Akun',
//                       style: TextStyle(
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.bold,
//                         color: primaryBlue,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             // Spasi di bagian bawah (opsional)
//             const SizedBox(height: 40.0),
//           ],
//         ),
//       ),
//     );
//   }
// }








// import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> craeteState() => _LoginScreenState();


//   class _LoginScreenState extends State<LoginScreen> {
//     @override
//     Widget build(BuildContext context){
//         return Scaffold(
//             backgroundColor: Colors.white,
//             body: SafeArea(
//                 child: Padding(
//                     padding: EdgeInsets.all(16),
//                     child: Column(
//                         children: 
//                     ),
//                 ),
//             ),
//         );
//     }
//   }