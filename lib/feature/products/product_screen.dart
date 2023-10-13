import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({
    super.key,
    this.category,
  });

  final String? category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category ?? 'Product Screen'),
      ),
      body: const Center(
        child: Text('Product Screen'),
      ),
    );
  }
}
