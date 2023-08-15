import 'package:firebase_login/constant/size.dart';
import 'package:firebase_login/controller/auth_controller.dart';
import 'package:firebase_login/pages/widgets/button.dart';
import 'package:firebase_login/pages/widgets/text_field.dart';
import 'package:firebase_login/pages/widgets/top_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    List images = [
      "g.png",
      "t.png",
      "f.png",
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TopImage(
            image: const AssetImage("assets/img/signup.png"),
            child: Column(
              children: [
                SizedBox(height: Util.height(context) * 0.16),
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/img/profile.png"),
                  backgroundColor: Colors.white70,
                )
              ],
            ),
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
              ],
            ),
          ),
          const SizedBox(height: 70),
          AuthButton(
            name: 'Sign up',
            onTap: () => AuthController.instance.register(
              emailController.text.trim(),
              passwordController.text.trim(),
            ),
          ),
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
              text: "Have an account?",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[500],
              ),
            ),
          ),
          SizedBox(height: Util.width(context) * 0.2),
          RichText(
            text: TextSpan(
              text: "Sign up using the following method",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 16,
              ),
            ),
          ),
          Wrap(
            children: List<Widget>.generate(
              images.length,
              (index) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 30,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(
                      // ignore: prefer_interpolation_to_compose_strings
                      "assets/img/" + images[index],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
