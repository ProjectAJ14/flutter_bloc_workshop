import 'package:flutter/material.dart';

void addToCartDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: Colors.white,
      title: const Row(
        children: [
          Icon(Icons.error, color: Colors.red),
          SizedBox(width: 8),
          Text('Error', style: TextStyle(color: Colors.red)),
        ],
      ),
      content: Text(
        message,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('OK'),
        ),
      ],
    ),
  );
}
