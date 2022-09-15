import 'package:flutter/material.dart';
import '../data/msword.dart';

class MsOfficePage extends StatelessWidget {
  const MsOfficePage({Key? key}) : super(key: key);
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
          title: const Text("Ms Office Shortcuts"),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemCount: data.length,
          separatorBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "${index + 1}",
                  style: const TextStyle(color: Colors.black),
                ),
              ),
              title: Text("${data[index]["key"]}"),
              subtitle: Text("${data[index]["value"]}"),
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return const Divider(
              color: Colors.black,
            );
          },
        ),
      ),
    ));
  }
}
