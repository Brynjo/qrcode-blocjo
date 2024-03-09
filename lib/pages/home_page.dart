import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME PAGE"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.goNamed('products.index');
              },
              child: Text("Product"),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed('settings');
              },
              child: Text("Settings"),
            ),
          ],
        ),
      ),
    );
  }
}
