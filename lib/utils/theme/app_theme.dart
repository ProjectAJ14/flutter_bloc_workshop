import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AppTheme extends Equatable {
  final Color background;
  final Color card;
  final int padding;
  final LinearGradient primaryGradient;
  final Color buttonColor;

  const AppTheme({
    this.background = Colors.white,
    this.card = Colors.green,
    this.padding = 8,
    this.primaryGradient = const LinearGradient(
      colors: [
        Colors.deepPurple,
        Colors.pink,
      ],
    ),
    this.buttonColor = Colors.red,
  });

  factory AppTheme.light() {
    return const AppTheme(
      background: Color.fromARGB(255, 44, 45, 45),
      card: Colors.green,
      padding: 8,
      buttonColor: Colors.red,
    );
  }

  factory AppTheme.dark() {
    return const AppTheme(
      background: Colors.black,
      card: Colors.red,
      padding: 8,
      buttonColor: Colors.blueAccent,
    );
  }

  @override
  List<Object?> get props => [background, card, padding];
}
