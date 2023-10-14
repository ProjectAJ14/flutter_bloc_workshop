part of 'categories_bloc.dart';

sealed class CategoriesState extends Equatable {
  const CategoriesState();

  @override
  List<Object> get props => [];
}

final class CategoriesInitialState extends CategoriesState {}

final class CategoriesLoadingState extends CategoriesState {}

final class CategoriesSuccessState extends CategoriesState {
  final List<String> categories;

  const CategoriesSuccessState(this.categories);

  @override
  List<Object> get props => [categories];
}

final class CategoriesErrorEvent extends CategoriesState {
  final String message;

  const CategoriesErrorEvent(this.message);

  @override
  List<Object> get props => [message];
}
