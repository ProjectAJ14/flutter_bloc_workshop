import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_workshop/features/counter/cubit/counter_cubit.dart';

import 'view/counter_view.dart';

/// A screen that displays a counter and allows the user to increment or decrement it.
///
/// This screen is implemented as a stateless widget and is used in the Counter feature.
/// The CounterScreen widget is responsible for displaying the current count and two buttons to increment and decrement it.
///
/// Example usage:
///
/// ```dart
/// CounterScreen(),
/// ```
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );
  }
}
