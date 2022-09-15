import 'package:flutter/material.dart';
import '../data/vscode.dart';

class VsCodePage extends StatelessWidget {
  const VsCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: const Icon(Icons.keyboard_return),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text("VS code Shortcuts"),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemCount: vscode.length,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              color: Colors.black,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "${index + 1}",
                  style: const TextStyle(color: Colors.black),
                ),
              ),
              title: Text("${vscode[index]["key"]}"),
              subtitle: Text("${vscode[index]["value"]}"),
            );
          },
        ),
      ),
    ));
  }
}
