import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

class CubitObserver extends BlocObserver {
  CubitObserver();

  var logger = Logger();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);

    logger.d("onChange -- bloc: ${bloc.runtimeType}, change: $change");
  }
}
