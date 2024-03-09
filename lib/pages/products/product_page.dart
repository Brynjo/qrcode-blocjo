import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PRODUCT PAGE"),
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              return context.goNamed(
                'products.show',
                pathParameters: {
                  "productId": "$index",
                },
              );
            },
            leading: CircleAvatar(
              child: Text("$index"),
            ),
            title: Text("Product $index"),
          );
        },
      ),
    );
  }
}
