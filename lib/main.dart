import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'app/my_app.dart';
import 'utils/observer/cubit_observer.dart';

void main() {
  runZonedGuarded(() async {
    Bloc.observer = CubitObserver();

    return runApp(const MyApp());
  }, (error, stack) {
    debugPrint(error.toString());
  });
}
