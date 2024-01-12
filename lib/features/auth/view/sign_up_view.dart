import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twita_kulone/common/common.dart';
import 'package:twita_kulone/constants/constants.dart';
import 'package:twita_kulone/features/auth/view/login_view.dart';
import 'package:twita_kulone/features/auth/widgets/auth_field.dart';
import 'package:twita_kulone/theme/theme.dart';

class SignupView extends StatefulWidget {
  static route()=>MaterialPageRoute(builder: (context) {
    return const SignupView();
  },);
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
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
                  hintText: 'Email',
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
                    text: 'Already have an account? ',
                    style: const TextStyle(
                      color: Pallete.whiteColor,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: 'Login',
                        style: const TextStyle(
                          color: Pallete.blueColor,
                          fontSize: 16,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {
                          Navigator.push(
                            context,
                            LoginView.route(),
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