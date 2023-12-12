import 'package:flutter/material.dart';

class MediaPage extends StatelessWidget {
  const MediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "New post",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              size: 35,
              color: Colors.black,
            )),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "Next",
                style: TextStyle(fontSize: 18),
              ))
        ],
      ),
    );
  }
}
