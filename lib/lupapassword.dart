import 'package:flutter/material.dart';
import 'package:flutter_application_uts/signup.dart';
import 'package:flutter_application_uts/login.dart';

class lupaPassword extends StatefulWidget {
  const lupaPassword({super.key});

  @override
  State<lupaPassword> createState() => _lupaPassword();
}

class _lupaPassword extends State<lupaPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lupa Password"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          width: 300,
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Lupa Password",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TextFormGlobal(
                  controller: TextEditingController(),
                  text: 'NIM',
                  textInputType: TextInputType.text,
                  obscureText: false,
                ),
                SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => signUp()));
                  },
                  child: Text(
                    'Cek NIM',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 5),
                TextFormGlobal(
                  controller: TextEditingController(),
                  text: 'Password Baru',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                SizedBox(height: 5),
                TextFormGlobal(
                  controller: TextEditingController(),
                  text: 'Confirm Password',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                SizedBox(height: 10),
                // === BUTTON SIGN UP START ===
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => login(),
                        ),
                      );
                    },
                    child: Text('Confirm')),
                // === BUTTON SIGN UP END ===
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ============ CLASS WIDGET START ============
// WIDGET FORM START
class TextFormGlobal extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscureText;

  const TextFormGlobal({
    Key? key,
    required this.controller,
    required this.text,
    required this.textInputType,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: text,
          border: OutlineInputBorder(),
        ),
        obscureText: obscureText,
        keyboardType: textInputType,
      ),
    );
  }
}
// WIDGET FORM START
// ============ CLASS WIDGET END ============