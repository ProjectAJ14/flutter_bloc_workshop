import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'custom_theme.dart';

class CTheme extends StatefulWidget {
  final Widget child;
  final AppTheme theme;
  const CTheme({Key? key, required this.child, required this.theme})
      : super(key: key);

  static CThemeState of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<CustomTheme>())!.data;
  }

  @override
  CThemeState createState() => CThemeState();
}

class CThemeState extends State<CTheme> {
  late AppTheme theme;

  @override
  void initState() {
    super.initState();
    theme = widget.theme;
  }

  void changeTheme(AppTheme newTheme) {
    setState(() {
      theme = newTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomTheme(
      data: this,
      theme: widget.theme,
      child: widget.child,
    );
  }
}
