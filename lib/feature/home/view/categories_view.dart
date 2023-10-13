import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/categories_bloc.dart';
import '../widgets/categories_card.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        if (state is CategoriesInitialEvent) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is CategoriesLoadingEvent) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is CategoriesSuccessEvent) {
          return GridView.builder(
            itemCount: state.categories.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
            ),
            itemBuilder: (context, index) {
              final category = state.categories[index];

              return CategoryCard(
                onTap: () {
                  // Handle category tap
                },
                categoryName: category,
              );
            },
          );
        }

        if (state is CategoriesErrorEvent) {
          return Center(
            child: Text(state.message),
          );
        }

        return const SizedBox();
      },
    );
  }
}
