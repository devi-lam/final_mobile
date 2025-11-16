// import 'package:flutter/material.dart';
// import 'login_page.dart';
// import 'register_page.dart';

// class AuthPage extends StatefulWidget {
//   const AuthPage({super.key});

//   @override
//   State<AuthPage> createState() => _AuthPageState();
// }

// class _AuthPageState extends State<AuthPage> {
//   int selectedIndex = 1; // default ke "Daftar"

//   @override
//   Widget build(BuildContext context) {
//     Color primaryBlue = const Color(0xFF005AC2);

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Tombol Back
//               IconButton(
//                 icon: const Icon(Icons.arrow_back),
//                 onPressed: () => Navigator.pop(context),
//               ),

//               const SizedBox(height: 10),

//               // Judul
//               Text(
//                 selectedIndex == 0 ? "Masuk" : "Buat Akun",
//                 style: TextStyle(
//                   fontSize: 26,
//                   fontWeight: FontWeight.bold,
//                   color: primaryBlue,
//                 ),
//               ),

//               const SizedBox(height: 20),

//               // ======= SWITCH LOGIN & REGISTER =======
//               Container(
//                 padding: const EdgeInsets.all(5),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFFE8F0FF),
//                   borderRadius: BorderRadius.circular(40),
//                 ),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: GestureDetector(
//                         onTap: () => setState(() => selectedIndex = 0),
//                         child: AnimatedContainer(
//                           duration: const Duration(milliseconds: 250),
//                           padding: const EdgeInsets.symmetric(vertical: 12),
//                           decoration: BoxDecoration(
//                             color: selectedIndex == 0
//                                 ? primaryBlue
//                                 : Colors.transparent,
//                             borderRadius: BorderRadius.circular(40),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Login",
//                               style: TextStyle(
//                                 color: selectedIndex == 0
//                                     ? Colors.white
//                                     : primaryBlue,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: GestureDetector(
//                         onTap: () => setState(() => selectedIndex = 1),
//                         child: AnimatedContainer(
//                           duration: const Duration(milliseconds: 250),
//                           padding: const EdgeInsets.symmetric(vertical: 12),
//                           decoration: BoxDecoration(
//                             color: selectedIndex == 1
//                                 ? primaryBlue
//                                 : Colors.transparent,
//                             borderRadius: BorderRadius.circular(40),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Daftar",
//                               style: TextStyle(
//                                 color: selectedIndex == 1
//                                     ? Colors.white
//                                     : primaryBlue,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               const SizedBox(height: 20),

//               // ======= HALAMAN LOGIN / REGISTER =======
//               Expanded(
//                 child: AnimatedSwitcher(
//                   duration: const Duration(milliseconds: 300),
//                   child: selectedIndex == 0
//                       ? const LoginPage()
//                       : const RegisterPage(),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
