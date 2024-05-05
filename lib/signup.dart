import 'package:flutter/material.dart';
import 'package:flutter_application_uts/home.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _SignUp();
}

class _SignUp extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SIGN UP"),
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
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TextFormGlobal(
                  controller: TextEditingController(),
                  text: 'Nama Mahasiswa',
                  textInputType: TextInputType.name,
                  obscureText: false,
                ),
                SizedBox(height: 5),
                TextFormGlobal(
                  controller: TextEditingController(),
                  text: 'NIM',
                  textInputType: TextInputType.text,
                  obscureText: false,
                ),
                SizedBox(height: 5),
                TextFormGlobal(
                  controller: TextEditingController(),
                  text: 'Program Studi',
                  textInputType: TextInputType.text,
                  obscureText: false,
                ),
                SizedBox(height: 5),
                TextFormGlobal(
                  controller: TextEditingController(),
                  text: 'Email',
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(height: 5),
                TextFormGlobal(
                  controller: TextEditingController(),
                  text: 'Password',
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
                          builder: (_) => homepage(),
                        ),
                      );
                    },
                    child: Text('Sign Up')),
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