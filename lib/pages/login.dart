import 'package:flutter/material.dart';
import 'dasbroadpage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _gmail = TextEditingController();
  final TextEditingController _passwordakun = TextEditingController();

  bool _isObscure = true;
  IconData _isObscureIcon = Icons.remove_red_eye;
  bool _rememberMe = true;

  void isObscureText() {
    if (_isObscure) {
      _isObscure = false;
      _isObscureIcon = Icons.remove_red_eye_outlined;
    } else {
      _isObscure = true;
      _isObscureIcon = Icons.remove_red_eye;
    }

    debugPrint(_isObscure.toString());
  }

  bool _isObscurein = true;
  IconData _isObscureinIcon = Icons.remove_red_eye;

  void isObscureTextIn() {
    if (_isObscurein) {
      _isObscurein = false;
      _isObscureinIcon = Icons.remove_red_eye_outlined;
    } else {
      _isObscurein = true;
      _isObscureinIcon = Icons.remove_red_eye;
    }

    debugPrint(_isObscurein.toString());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body:  Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.cyan, Colors.purple, Colors.pink],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Image.asset(
                "asset/image/logodefline.png",
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),

            TextField(
              controller: _username,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Username",
                alignLabelWithHint: true,
                focusColor: Colors.yellowAccent,
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _password,
              keyboardType: TextInputType.text,
              obscureText: _isObscure,
              decoration: InputDecoration(
                hintText: "Password",
                alignLabelWithHint: true,
                focusColor: Colors.yellowAccent,
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: IconButton(
                  icon: Icon(_isObscureIcon),
                  onPressed: () {
                    setState(() {
                      isObscureText();
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),

            TextField(
              controller: _gmail,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "@Gmail anda",
                alignLabelWithHint: true,
                focusColor: Colors.yellowAccent,
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20),

            TextField(
              controller: _passwordakun,
              keyboardType: TextInputType.text,
              obscureText: _isObscurein,
              decoration: InputDecoration(
                hintText: "Password Akun@",
                alignLabelWithHint: true,
                focusColor: Colors.yellowAccent,
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: IconButton(
                  icon: Icon(_isObscureinIcon),
                  onPressed: () {
                    setState(() {
                      isObscureTextIn();
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),

            Row(
              children: [
                Checkbox(
                  value: _rememberMe,
                  onChanged: (value) {
                    setState(() {
                      _rememberMe = !_rememberMe;
                    });
                  },
                ),
                Text(
                  "UDAH DICEK BELUM",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                if (_username.text == "" &&
                    _password.text == "" &&
                    _gmail.text == "" &&
                    _passwordakun.text == "") {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Sukses"),
                      content: Text("Selamat datang ${_username.text}"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DashboardPage(),
                              ),
                            );
                          },
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Gagal"),
                      content: Text("Silakan coba lagi!!"),
                    ),
                  );
                }
              },
              child: Text(
                "LOGIN",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
