import 'package:flutter/material.dart';
import 'package:utensils/Indexpage.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final _user = TextEditingController();
  final _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: _boxStyle(),
              child: Column(
                children: [
                  const Text(
                    'Kitchen Tools',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4291C5),
                    ),
                  ),
                  const SizedBox(height: 30),

                  _field(
                    controller: _user,
                    icon: Icons.person_outline,
                    hint: "Username",
                    validator: (v) => v!.isEmpty ? "Enter Username" : null,
                  ),

                  _field(
                    controller: _pass,
                    icon: Icons.lock_outline,
                    hint: "Password",
                    obscure: true,
                    validator: (v) =>
                    v!.length < 8 ? "Password must be more than 8 characters" : null,
                  ),

                  const SizedBox(height: 22),

                  // Login button
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => Indexpage()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF34A6C7),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxStyle() {
    return BoxDecoration(
      color: const Color(0xFFF0F4F7),
      borderRadius: BorderRadius.circular(28),
      boxShadow: const [
        BoxShadow(
            color: Color.fromARGB(30, 0, 0, 0),
            offset: Offset(12, 18),
            blurRadius: 28),
        BoxShadow(
            color: Colors.white,
            offset: Offset(-8, -10),
            blurRadius: 18),
      ],
    );
  }

  // ------------------------------
  // ويدجت الحقل (اختصار كبير)
  // ------------------------------
  Widget _field({
    required TextEditingController controller,
    required IconData icon,
    required String hint,
    bool obscure = false,
    String? Function(String?)? validator,
  }) {
    return Container(
      height: 56,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: _fieldBox(),
      child: Row(
        children: [
          Icon(icon, color: Colors.black38),
          const SizedBox(width: 8),
          Expanded(
            child: TextFormField(
              controller: controller,
              obscureText: obscure,
              validator: validator,
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ------------------------------
  // ظل الحقول (اختصار)
  // ------------------------------
  BoxDecoration _fieldBox() {
    return BoxDecoration(
      color: const Color(0xFFF0F4F7),
      borderRadius: BorderRadius.circular(16),
      boxShadow: const [
        BoxShadow(
            color: Color.fromARGB(40, 0, 0, 0),
            offset: Offset(6, 6),
            blurRadius: 12),
        BoxShadow(
            color: Colors.white,
            offset: Offset(-6, -6),
            blurRadius: 12),
      ],
    );
  }
}
