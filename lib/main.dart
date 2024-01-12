import 'package:flutter/material.dart';
import 'package:twita_kulone/features/auth/view/login_view.dart';
import 'package:twita_kulone/features/auth/view/sign_up_view.dart';
import 'package:twita_kulone/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      home: const SignupView( ),
    );
  }
}
