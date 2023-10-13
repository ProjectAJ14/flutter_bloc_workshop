import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_observer.dart';

import 'app/my_app.dart';

void main() {
  runZonedGuarded(() {
    Bloc.observer = TalkerBlocObserver();

    runApp(const MyApp());
  }, (error, stack) {
    debugPrint('runZonedGuarded: Caught error in my root zone.');
  });
}
