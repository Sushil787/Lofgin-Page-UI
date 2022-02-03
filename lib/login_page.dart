import 'package:app/page_route.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _name = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "Asset/Images/login_photo.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                "Welcome $_name",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32.0, vertical: 1.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter your name",
                          label: Text("Name"),
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(color: Colors.purple),
                          labelStyle: TextStyle(color: Colors.purple)),
                      onChanged: (value) {
                        setState(() {
                          _name = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password",
                          label: Text("Password"),
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(color: Colors.purple),
                          labelStyle: TextStyle(color: Colors.purple)),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoute.homeRoute);
                        },
                        style: TextButton.styleFrom(
                          minimumSize: const Size(60, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        icon: const Icon(Icons.login),
                        label: const Text("login")),
                    const SizedBox(
                      height: 60.0,
                    ),
                    // ElevatedButton(
                    //   onPressed: snow,
                    //   child: Text(_name),
                    //   style: ElevatedButton.styleFrom(
                    //       elevation: 10.0,
                    //       primary: Colors.black,
                    //       shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(30))),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
