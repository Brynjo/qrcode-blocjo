import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage(
    this.id, {
    super.key,
  });

  final String? id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Product Detail $id"),
      ),
    );
  }
}
