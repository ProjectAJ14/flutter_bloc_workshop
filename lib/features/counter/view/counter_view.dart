import 'package:flutter/material.dart';

/// A widget that displays the current count and provides buttons to
/// increment and decrement it.
class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Counter - Cubit')),
      body: Center(
        // TODO: Wrap Text with BlocBuilder
        child: Text('0', style: textTheme.displayLarge!.copyWith(fontSize: 90)),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              // TODO: Add Increment event here
            },
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              // TODO: Add Decrement event here
            },
          ),
        ],
      ),
    );
  }
}
