import 'package:flutter/material.dart';

class DevicesList extends StatelessWidget {
  const DevicesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/Linux");
          },
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset("assets/image/linux.png"),
            ),
            title: const Text("Linux"),
          ),
        ),
        const Divider(),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/Window");
          },
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset("assets/image/window.png"),
            ),
            title: const Text("Window"),
          ),
        ),
        const Divider(),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/Browser");
          },
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset("assets/image/chrome.png"),
            ),
            title: const Text("Chrome"),
          ),
        ),
        const Divider(),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/vscode");
          },
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset("assets/image/vscode.png"),
            ),
            title: const Text("Visual Studio Code"),
          ),
        ),
        const Divider(),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/MsOffice");
          },
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset("assets/image/office.png"),
            ),
            title: const Text("Ms Office"),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
