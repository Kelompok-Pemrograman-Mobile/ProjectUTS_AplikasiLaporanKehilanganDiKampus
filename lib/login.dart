import 'package:flutter/material.dart';
import 'package:flutter_application_uts/signup.dart';
import 'package:flutter_application_uts/home.dart';
import 'package:flutter_application_uts/lupapassword.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginPage();
}

class _loginPage extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Login Page'),
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
          height: 350,

          // ======== FORM START ========
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
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
                SizedBox(height: 20),
                // === BUTTON SIGN IN START ===
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => homepage(),
                        ),
                      );
                    },
                    child: Text('Sign In')),
                // === BUTTON SIGN IN END ===
                SizedBox(height: 10),
                // === BUTTON SIGN UP START ===
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => signUp(),
                        ),
                      );
                    },
                    child: Text('Sign Up')),
                // === BUTTON SIGN UP END ===
                SizedBox(height: 15),
                // === BUTTON SIGN UP START ===
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => lupaPassword()));
                  },
                  child: Text(
                    'Lupa Password?',
                    textAlign: TextAlign.center,
                  ),
                )
                // === BUTTON SIGN UP END ===
              ],
            ),
          ),
          // ======== FORM END ========
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
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