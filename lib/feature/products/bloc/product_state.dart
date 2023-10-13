part of 'product_bloc.dart';

sealed class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

final class ProductInitialState extends ProductState {}

final class ProductLoadingState extends ProductState {}

final class ProductLoadedState extends ProductState {
  final List<ProductModel> products;

  const ProductLoadedState({required this.products});

  @override
  List<Object> get props => [products];
}

final class ProductErrorState extends ProductState {
  final String message;

  const ProductErrorState({required this.message});

  @override
  List<Object> get props => [message];
}

final class ProductAddedToCartState extends ProductState {}

final class ProductAddToCartErrorState extends ProductState {
  final String message;

  const ProductAddToCartErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
