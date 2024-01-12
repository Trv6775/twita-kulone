import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twita_kulone/common/common.dart';
import 'package:twita_kulone/constants/constants.dart';
import 'package:twita_kulone/features/auth/view/sign_up_view.dart';
import 'package:twita_kulone/features/auth/widgets/auth_field.dart';
import 'package:twita_kulone/theme/theme.dart';

class LoginView extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) {
          return const LoginView();
        },
      );

  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final appBar = UIConstants.appBar();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                //textfield 1
                AuthField(
                  controller: emailController,
                  hintText: 'Email address',
                ),
                const SizedBox(height: 25),
                //textfield 2
                AuthField(
                  controller: passwordController,
                  hintText: 'Password',
                ),
                //login button
                const SizedBox(height: 25),
                Align(
                  alignment: Alignment.centerRight,
                  child: RoundedSmallButton(
                    onTap: () {},
                    label: 'Done',
                  ),
                ),
                //Textspan
                const SizedBox(height: 40),
                RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: const TextStyle(
                      color: Pallete.whiteColor,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign up',
                        style: const TextStyle(
                          color: Pallete.blueColor,
                          fontSize: 16,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              SignupView.route(),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
