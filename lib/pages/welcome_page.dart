import 'package:firebase_login/controller/auth_controller.dart';
import 'package:firebase_login/pages/widgets/button.dart';
import 'package:firebase_login/pages/widgets/top_image.dart';
import 'package:flutter/material.dart';

import '../constant/size.dart';

// ignore: must_be_immutable
class WelcomePage extends StatelessWidget {
  String email;

  WelcomePage({
    super.key,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
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
          const SizedBox(height: 70),
          Container(
            margin: const EdgeInsets.only(left: 20),
            width: Util.width(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  email,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 200),
          AuthButton(
            name: 'Sign out',
            onTap: () => AuthController.instance.logOut(),
          ),
        ],
      ),
    );
  }
}
