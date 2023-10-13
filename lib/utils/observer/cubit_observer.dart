import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

/// A [BlocObserver] that observes the behavior of [Cubit] instances.
/// This observer is used to log all [Cubit] state changes and errors.
/// To use this observer, simply extend this class and override any of the
/// [BlocObserver] methods that you'd like to observe.
///
class CubitObserver extends BlocObserver {
  CubitObserver();

  var logger = Logger();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);

    logger.d("onChange -- bloc: ${bloc.runtimeType}, change: $change");
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);

    logger.d("onCreate -- bloc: ${bloc.runtimeType}");
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);

    logger.d("onClose -- bloc: ${bloc.runtimeType}");
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);

    logger.d("onError -- bloc: ${bloc.runtimeType}, error: $error");
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);

    logger.d("onEvent -- bloc: ${bloc.runtimeType}, event: $event");
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);

    logger.d(
        "onTransition -- bloc: ${bloc.runtimeType}, transition: $transition");
  }
}
