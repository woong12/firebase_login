import 'package:firebase_login/constant/size.dart';
import 'package:firebase_login/pages/signup_page.dart';
import 'package:firebase_login/pages/widgets/button.dart';
import 'package:firebase_login/pages/widgets/text_field.dart';
import 'package:firebase_login/pages/widgets/top_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/auth_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const TopImage(
            image: AssetImage("assets/img/loginimg.png"),
            child: null,
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            width: Util.width(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign into your account",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[500],
                  ),
                ),
                const SizedBox(height: 50),
                TextFieldWidget(
                  controller: emailController,
                  name: 'Email',
                  icon: Icons.email,
                  obscure: false,
                ),
                const SizedBox(height: 20),
                TextFieldWidget(
                  controller: passwordController,
                  name: 'Password',
                  icon: Icons.lock,
                  obscure: true,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot your Password?",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 70),
          AuthButton(
            name: 'Sign in',
            onTap: () => AuthController.instance.login(
              emailController.text.trim(),
              passwordController.text.trim(),
            ),
          ),
          SizedBox(height: Util.width(context) * 0.2),
          RichText(
            text: TextSpan(
              text: "Don't have an account?",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 20,
              ),
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.to(
                          () => const SignUpPage(),
                        ),
                  text: " Create",
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
