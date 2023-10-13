import 'package:flutter/material.dart';

import '../../../data/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to product details page
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product.image),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow),
                    Text(product.rating.rate.toString()),
                  ],
                ),
                Text('\$${product.price.toStringAsFixed(2)}'),
              ],
            ),
            Text(product.title),
            ElevatedButton(
              onPressed: () {
                // Add to cart
              },
              child: const Text('Add to cart'),
            ),
          ],
        ),
      ),
    );
  }
}
