import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repo/repo.dart';
import '../../../utils/exceptions/exceptions.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(CategoriesInitialEvent()) {
    on<CategoriesFetchEvent>((event, emit) async {
      emit(CategoriesLoadingEvent());

      try {
        final categories = await productRepo.getAllCategories();

        emit(CategoriesSuccessEvent(categories));
      } on RepoException catch (e) {
        emit(CategoriesErrorEvent(e.message));
      } catch (e) {
        emit(CategoriesErrorEvent(e.toString()));
      }
    });
  }
}
