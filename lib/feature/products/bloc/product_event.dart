part of 'product_bloc.dart';

sealed class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class ProductFetchEvent extends ProductEvent {
  final String category;

  const ProductFetchEvent({required this.category});

  @override
  List<Object> get props => [];
}

class ProductAddToCartEvent extends ProductEvent {
  final ProductModel product;

  const ProductAddToCartEvent({required this.product});

  @override
  List<Object> get props => [];
}
