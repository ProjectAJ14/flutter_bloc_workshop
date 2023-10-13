import 'package:flutter/material.dart';

import 'view/product_view.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({
    super.key,
    required this.category,
  });

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: ProductView(),
      ),
    );
  }
}
