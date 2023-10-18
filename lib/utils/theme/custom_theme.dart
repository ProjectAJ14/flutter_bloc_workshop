import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'ct_theme.dart';

class CustomTheme extends InheritedWidget {
  const CustomTheme({
    Key? key,
    required this.child,
    required this.data,
    required this.theme,
  }) : super(key: key, child: child);

  @override
  final Widget child;
  final CThemeState data;
  final AppTheme theme;

  @override
  bool updateShouldNotify(CustomTheme oldWidget) => true;
}
