import 'package:flutter/material.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _showPass = false;
  bool _showConfirmPass = false;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const LoginPage()),
            );
          },
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
            const Text("Buat Akun",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),

            const SizedBox(height: 20),

            // TAB SWITCH
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
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => const LoginPage()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text("Login",
                            style:
                                TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Text("Daftar",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // NAME FIELD
            TextField(
              decoration: InputDecoration(
                hintText: "Masukkan Nama Lengkap",
                filled: true,
                fillColor: const Color(0xfff0f0f0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 15),

            // EMAIL FIELD
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
              obscureText: !_showPass,
              decoration: InputDecoration(
                hintText: "Masukkan Kata Sandi",
                filled: true,
                fillColor: const Color(0xfff0f0f0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                suffixIcon: IconButton(
                  icon:
                      Icon(_showPass ? Icons.visibility : Icons.visibility_off),
                  onPressed: () => setState(() => _showPass = !_showPass),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // CONFIRM PASSWORD
            TextField(
              obscureText: !_showConfirmPass,
              decoration: InputDecoration(
                hintText: "Konfirmasi Kata Sandi",
                filled: true,
                fillColor: const Color(0xfff0f0f0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                suffixIcon: IconButton(
                  icon: Icon(_showConfirmPass
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () =>
                      setState(() => _showConfirmPass = !_showConfirmPass),
                ),
              ),
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Checkbox(
                    value: _rememberMe,
                    onChanged: (v) => setState(() => _rememberMe = v!)),
                const Text("Ingat Saya"),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text("Lupa Kata Sandi?",
                      style: TextStyle(color: Colors.blue)),
                )
              ],
            ),

            const SizedBox(height: 15),

            // BUTTON
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
                child: const Text("Daftar",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Sudah punya akun? "),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginPage()),
                    );
                  },
                  child: const Text("Masuk",
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

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key});

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   bool rememberMe = false;
//   bool passVisible = false;
//   bool confirmPassVisible = false;

//   Color primaryBlue = const Color(0xFF005AC2);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           // Nama
//           _buildTextField("Masukkan Nama Lengkap"),

//           const SizedBox(height: 12),

//           // Email
//           _buildTextField("Masukkan Email"),

//           const SizedBox(height: 12),

//           // Password
//           _buildPasswordField(
//             hint: "Masukkan Kata Sandi",
//             visible: passVisible,
//             onTap: () => setState(() => passVisible = !passVisible),
//           ),

//           const SizedBox(height: 12),

//           // Confirm Password
//           _buildPasswordField(
//             hint: "Konfirmasi Kata Sandi",
//             visible: confirmPassVisible,
//             onTap: () => setState(() => confirmPassVisible = !confirmPassVisible),
//           ),

//           const SizedBox(height: 12),

//           // Checkbox + Lupa Password
//           Row(
//             children: [
//               Checkbox(
//                 value: rememberMe,
//                 onChanged: (v) => setState(() => rememberMe = v!),
//                 activeColor: primaryBlue,
//               ),
//               const Text("Ingat Saya"),
//               const Spacer(),
//               Text(
//                 "Lupa Kata Sandi?",
//                 style: TextStyle(color: primaryBlue, fontWeight: FontWeight.w500),
//               ),
//             ],
//           ),

//           const SizedBox(height: 20),

//           // Tombol Daftar
//           SizedBox(
//             width: double.infinity,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 padding: const EdgeInsets.symmetric(vertical: 15),
//                 backgroundColor: primaryBlue,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//               onPressed: () {},
//               child: const Text(
//                 "Daftar",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 17,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),

//           const SizedBox(height: 20),

//           // Sudah punya akun?
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text("Sudah punya akun? "),
//               Text(
//                 "Masuk",
//                 style: TextStyle(color: primaryBlue, fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   // Custom TextField
//   Widget _buildTextField(String hint) {
//     return TextField(
//       decoration: InputDecoration(
//         hintText: hint,
//         filled: true,
//         fillColor: const Color(0xFFF4F4F4),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: BorderSide.none,
//         ),
//       ),
//     );
//   }

//   // Password TextField
//   Widget _buildPasswordField({
//     required String hint,
//     required bool visible,
//     required VoidCallback onTap,
//   }) {
//     return TextField(
//       obscureText: !visible,
//       decoration: InputDecoration(
//         hintText: hint,
//         filled: true,
//         fillColor: const Color(0xFFF4F4F4),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: BorderSide.none,
//         ),
//         suffixIcon: GestureDetector(
//           onTap: onTap,
//           child: Icon(
//             visible ? Icons.visibility : Icons.visibility_off,
//           ),
//         ),
//       ),
//     );
//   }
// }
