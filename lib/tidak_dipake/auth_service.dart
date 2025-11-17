// /*import 'package:firebase_auth/firebase_auth.dart';*/
// import 'package:flutter/material.dart';

// ValueNotifier<AuthService> authService = ValueNotifier(AuthService());

// class AuthService{
//   final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

//   User? get currentUser => firebaseAuth.currentUser;

//   Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();  

//   Future<UserCredential> signIn({
//     required String email,
//     required String password,

//   })  async{
//     return await firebaseAuth.signInWithEmailAndPassword(
//       email: email, password: password);
//   }
  
//   Future<UserCredential> createAccount({
//     required String name,
//     required String email,
//     required String password,
//     required String confirmPassword,
//   }) async {
//     if (password != confirmPassword) {
//       throw Exception("Password dan konfirmasi password tidak cocok");
//     }

//     try {
//       final UserCredential cred = await firebaseAuth.createUserWithEmailAndPassword(
//         email: email.trim(),
//         password: password,
//       );

//       final user = cred.user;
//       if (user != null) {
//         await user.updateDisplayName(name.trim());
//         await user.reload();
//         // optional: kirim email verifikasi
//         await user.sendEmailVerification();
//       }

//       return cred;
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         throw Exception('Password terlalu lemah.');
//       } else if (e.code == 'email-already-in-use') {
//         throw Exception('Email sudah terdaftar.');
//       } else if (e.code == 'invalid-email') {
//         throw Exception('Format email tidak valid.');
//       }
//       throw Exception(e.message ?? 'Gagal membuat akun.');
//     } catch (e) {
//       throw Exception('Gagal membuat akun: $e');
//     }
//   }

//   Future<void> signOut() async {
//     await firebaseAuth.signOut();
  
//   }
//   Future<void> resetPassword({
//     required String email,
//   }) async {
//     await firebaseAuth.sendPasswordResetEmail(email: email);
//   }

//   // Update Username
//   // Delete Account
//   // Reset Password from Current Password
// }
















// // import 'package:flutter/material.dart';
// // import 'login_page.dart';
// // import 'register_page.dart';

// // class AuthPage extends StatefulWidget {
// //   const AuthPage({super.key});

// //   @override
// //   State<AuthPage> createState() => _AuthPageState();
// // }

// // class _AuthPageState extends State<AuthPage> {
// //   int selectedIndex = 1; // default ke "Daftar"

// //   @override
// //   Widget build(BuildContext context) {
// //     Color primaryBlue = const Color(0xFF005AC2);

// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: SafeArea(
// //         child: Padding(
// //           padding: const EdgeInsets.symmetric(horizontal: 20),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               // Tombol Back
// //               IconButton(
// //                 icon: const Icon(Icons.arrow_back),
// //                 onPressed: () => Navigator.pop(context),
// //               ),

// //               const SizedBox(height: 10),

// //               // Judul
// //               Text(
// //                 selectedIndex == 0 ? "Masuk" : "Buat Akun",
// //                 style: TextStyle(
// //                   fontSize: 26,
// //                   fontWeight: FontWeight.bold,
// //                   color: primaryBlue,
// //                 ),
// //               ),

// //               const SizedBox(height: 20),

// //               // ======= SWITCH LOGIN & REGISTER =======
// //               Container(
// //                 padding: const EdgeInsets.all(5),
// //                 decoration: BoxDecoration(
// //                   color: const Color(0xFFE8F0FF),
// //                   borderRadius: BorderRadius.circular(40),
// //                 ),
// //                 child: Row(
// //                   children: [
// //                     Expanded(
// //                       child: GestureDetector(
// //                         onTap: () => setState(() => selectedIndex = 0),
// //                         child: AnimatedContainer(
// //                           duration: const Duration(milliseconds: 250),
// //                           padding: const EdgeInsets.symmetric(vertical: 12),
// //                           decoration: BoxDecoration(
// //                             color: selectedIndex == 0
// //                                 ? primaryBlue
// //                                 : Colors.transparent,
// //                             borderRadius: BorderRadius.circular(40),
// //                           ),
// //                           child: Center(
// //                             child: Text(
// //                               "Login",
// //                               style: TextStyle(
// //                                 color: selectedIndex == 0
// //                                     ? Colors.white
// //                                     : primaryBlue,
// //                                 fontWeight: FontWeight.w600,
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                     Expanded(
// //                       child: GestureDetector(
// //                         onTap: () => setState(() => selectedIndex = 1),
// //                         child: AnimatedContainer(
// //                           duration: const Duration(milliseconds: 250),
// //                           padding: const EdgeInsets.symmetric(vertical: 12),
// //                           decoration: BoxDecoration(
// //                             color: selectedIndex == 1
// //                                 ? primaryBlue
// //                                 : Colors.transparent,
// //                             borderRadius: BorderRadius.circular(40),
// //                           ),
// //                           child: Center(
// //                             child: Text(
// //                               "Daftar",
// //                               style: TextStyle(
// //                                 color: selectedIndex == 1
// //                                     ? Colors.white
// //                                     : primaryBlue,
// //                                 fontWeight: FontWeight.w600,
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),

// //               const SizedBox(height: 20),

// //               // ======= HALAMAN LOGIN / REGISTER =======
// //               Expanded(
// //                 child: AnimatedSwitcher(
// //                   duration: const Duration(milliseconds: 300),
// //                   child: selectedIndex == 0
// //                       ? const LoginPage()
// //                       : const RegisterPage(),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
