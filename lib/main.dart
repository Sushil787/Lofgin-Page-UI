import 'package:flutter/material.dart';
import 'pages/browser_page.dart';
import 'pages/linux_page.dart';
import 'pages/ms_office.dart';
import 'pages/vscode_page.dart';
import 'pages/window_page.dart';

import 'pages/home_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black87,
            title: const Text("ShortCut"),
            centerTitle: true,
          ),
          drawer: Drawer(
            backgroundColor: Colors.black87,
            child: Column(
              children: <Widget>[
                DrawerHeader(
                  padding: const EdgeInsets.all(0),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(
                          Icons.airplanemode_active,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Developer: Sushil Gyawali",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      )
                    ],
                  )),
                ),
                const Divider(
                  color: Colors.white,
                ),
                const ListTile(
                  leading: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Mesage",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                ),
                const ListTile(
                  leading: Icon(
                    Icons.help,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Help",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                ),
                const ListTile(
                  leading: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Share",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                ),
                const ListTile(
                  leading: Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Rate this app",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
          body: const DevicesList(),
        ),
      ),
      routes: {
        "/vscode": (context) => const VsCodePage(),
        "/Linux": (context) => const LinuxPage(),
        "/Window": (context) => const WindowPage(),
        "/Browser": (context) => const BrowserPage(),
        "/MsOffice": (context) => const MsOfficePage(),
      },
    
    );
    
  }
}
