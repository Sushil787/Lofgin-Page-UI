import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        // color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "Asset/Images/login_photo.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Welcome",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter your name",
                        label: Text("Name"),
                        hintStyle: TextStyle(color: Colors.purple),
                        labelStyle: TextStyle(color: Colors.purple)),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password",
                          label: Text("Password"),
                          hintStyle: TextStyle(color: Colors.purple),
                          labelStyle: TextStyle(color: Colors.purple))
                      // hintStyle: TextStyle(color: Colors.red)
                      ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton.icon(
                      onPressed: some,
                      icon: const Icon(Icons.login),
                      label: const Text("login"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void some() {}
