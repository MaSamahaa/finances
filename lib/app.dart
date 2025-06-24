import 'package:finance_app/common/themes/default_theme.dart';
import 'package:finance_app/features/sing_up/sing_up_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      home: const SignUpPage(),
    );
  }
}
