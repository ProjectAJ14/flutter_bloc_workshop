import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/product_bloc.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        if (state is ProductLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ProductLoadedState) {
          return ListView.builder(
            itemCount: state.products.length,
            itemBuilder: (context, index) {
              final product = state.products[index];
              return ListTile(
                title: Text(product.title),
                subtitle: Text(product.description),
                trailing: Text('\$${product.price}'),
              );
            },
          );
        } else if (state is ProductErrorState) {
          return const Center(
            child: Text('Error loading products'),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
