import 'package:flutter/material.dart';

import '../utils/theme/app_theme.dart';
import '../utils/theme/ct_theme.dart';
import 'route/routes/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CTheme(
      theme: AppTheme.light(),
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                primary: Colors.deepPurple,
                seedColor: Colors.deepPurple,
                background: CTheme.of(context).theme.background,
                onSurface: CTheme.of(context).theme.buttonColor,
              ),
              useMaterial3: true,
            ),
            routerConfig: router,
          );
        },
      ),
    );
  }
}
