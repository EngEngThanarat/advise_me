import 'package:advise_me/components/my_button.dart';
import 'package:advise_me/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.isLogin,
    required this.animationDuration,
    required this.size,
    required this.defaultLoginSize,
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return AnimatedOpacity(
      opacity: isLogin ? 1.0 : 0.0,
      duration: animationDuration * 4,
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: size.width,
          height: defaultLoginSize,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Advise Me',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.blueAccent.shade400,
                      ),
                ),
                
                Image.asset(
                  "assets/images/Logo.gif",
                  height: 330.0,
                  width: 330.0,
                ),
                
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                  // color: Colors.amber,
                  child: MyTextFeild(
                      icon: Icons.email,
                      controller: emailController,
                      hintText: 'Email',
                      obscureText: false),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                  // color: Colors.amber,
                  child: MyTextFeild(
                      icon: Icons.lock,
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: true),
                ),
                const SizedBox(height: 10),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                  child: MyButton(onTap: () {}, text: "Log In"),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
