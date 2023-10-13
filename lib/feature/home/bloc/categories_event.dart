part of 'categories_bloc.dart';

sealed class CategoriesEvent extends Equatable {
  const CategoriesEvent();

  @override
  List<Object> get props => [];
}

class CategoriesFetchEvent extends CategoriesEvent {
  const CategoriesFetchEvent();

  @override
  List<Object> get props => [];
}
