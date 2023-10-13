part of 'categories_bloc.dart';

sealed class CategoriesState extends Equatable {
  const CategoriesState();

  @override
  List<Object> get props => [];
}

final class CategoriesInitialEvent extends CategoriesState {}

final class CategoriesLoadingEvent extends CategoriesState {}

final class CategoriesSuccessEvent extends CategoriesState {
  final List<String> categories;

  const CategoriesSuccessEvent(this.categories);

  @override
  List<Object> get props => [categories];
}

final class CategoriesErrorEvent extends CategoriesState {
  final String message;

  const CategoriesErrorEvent(this.message);

  @override
  List<Object> get props => [message];
}
