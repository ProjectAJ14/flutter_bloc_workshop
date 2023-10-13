import 'package:get_it/get_it.dart';

import 'api/api_service.dart';
import 'api/api_service_impl.dart';

final getIt = GetIt.instance;

void initService() {
  getIt.registerLazySingleton<ApiService>(() => ApiServiceImpl());
}

ApiService get apiService => getIt.get<ApiService>();
