import 'package:advise_me/components/my_button.dart';
import 'package:advise_me/components/my_text_field.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
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
    // text controllers
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return AnimatedOpacity(
      opacity: isLogin ? 0.0 : 1.0,
      duration: animationDuration * 5,
      child: Visibility(
        visible: !isLogin,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: size.width,
            height: defaultLoginSize,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    'Create Account',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),

                  const SizedBox(height: 20),

                Image.asset(
                  "assets/images/RegisterLogo.gif",
                  height: 200.0,
                  width: 200.0,
                ),

                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                    // color: Colors.amber,
                    child: MyTextFeild(
                        icon: Icons.supervised_user_circle,
                        controller: emailController,
                        hintText: 'Fullname',
                        obscureText: false),
                  ),
                  
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                    // color: Colors.amber,
                    child: MyTextFeild(
                        icon: Icons.email,
                        controller: emailController,
                        hintText: 'Email Address',
                        obscureText: false),
                  ),

                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                    // color: Colors.amber,
                    child: MyTextFeild(
                        icon: Icons.phone,
                        controller: emailController,
                        hintText: 'Phone Number',
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

                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                    // color: Colors.amber,
                    child: MyTextFeild(
                        icon: Icons.check,
                        controller: passwordController,
                        hintText: 'Confirm Password',
                        obscureText: true),
                  ),
                  
                  const SizedBox(height: 10),
                  
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                    child: MyButton(onTap: () {}, text: "Sign In"),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
