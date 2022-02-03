import 'package:app/page_route.dart';
import 'package:flutter/material.dart';

// const l1 = <Widget>[
//   Center(
//     child: Text("hello"),
//   ),
//   Center(
//     child: Text("cam"),
//   ),
//   Center(
//     child: Text("set"),
//   ),
// ];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
        centerTitle: true,
      ),
      // body: l1[_currentIndex],
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, MyRoute.loginRoute);
            },
            icon: const Icon(Icons.code),
            label: const Text("move")),
      ),
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: "camera")
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
