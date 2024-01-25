import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twita_kulone/common/common.dart';
import 'package:twita_kulone/features/auth/controller/auth_controller.dart';
import 'package:twita_kulone/features/auth/view/login_view.dart';
import 'package:twita_kulone/features/auth/view/sign_up_view.dart';
import 'package:twita_kulone/features/home/view/home_view.dart';
import 'package:twita_kulone/theme/theme.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      home: ref.watch(currentUserAccountProvider).when(data: (user) {
        if(user==null){
          return const SignupView();
        }
       return const HomeView();
      }, error: (error, stackTrace) {
        return ErrorPage(error: error.toString(),);
      }, loading: () => const LoadingPage(),),
    );
  }
}
